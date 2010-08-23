require 'adva/engine'

require 'routing_filter'
require 'adva/routing_filters/section_root'

require 'action_controller' # really should be in truncate_html
require 'truncate_html'

module Adva
  class Blog < ::Rails::Engine
    include Adva::Engine

    initializer 'adva-blog.require_section_types', :after => 'prosecco.started' do
      config.to_prepare { require_dependency 'blog' }
    end
  end
end

RoutingFilter::SectionRoot.anchors_segments['Blog'] = '\d{4}'