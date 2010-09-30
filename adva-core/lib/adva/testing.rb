module Adva
  module Testing
    autoload :Engine, 'adva/testing/engine'

    Rails::Engine.extend(Engine)
    
    class << self
      def setup(options = {})
        Adva.out = StringIO.new('')
        setup_logging(options)
        setup_active_record

        Adva.engines.each do |e|
          e.setup_load_paths
        end
        
        Adva.engines.each do |e|
          e.require_patches
          e.preload_sliced_models
          e.migrate
        end

        load_assertions
        load_factories
      end
      
      def load_assertions
        Adva.engines.each { |e| e.load_assertions }
      end
      
      def load_factories
        Adva.engines.each { |e| e.load_factories }
      end
      
      def load_cucumber_support
        Adva.engines.each { |e| e.load_cucumber_support }
      end

      def load_helpers
        Adva.engines.each { |e| e.load_helpers }
      end
    
      def setup_logging(options)
        if log = options[:log]
          FileUtils.touch(log) unless File.exists?(log)
          ActiveRecord::Base.logger = Logger.new(log)
          ActiveRecord::LogSubscriber.attach_to(:active_record)
        end
      end
    
      def setup_active_record
        ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ':memory:')
        ActiveRecord::Migration.verbose = false
        DatabaseCleaner.strategy = :truncation
      end
    end
  end
end