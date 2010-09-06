require 'rack/utils'

module Adva
  class Static
    module Rack
      module Request
        protected

          def request(method, path, params = {})
            Adva.out.puts "  #{params['_method'] ? params['_method'].upcase : method} #{path} "

            status, headers, response = call(env_for(method, path, params))

            Adva.out.puts "  => #{status} " + (status == 302 ? "(Location: #{headers['Location']})" : '')
            Adva.out.puts response if status == 500
          end

          def env_for(method, path, params)
            ::Rack::MockRequest.env_for("http://#{site.host}#{path}", :method => method,
              :input => ::Rack::Utils.build_nested_query(params),
              'CONTENT_TYPE' => 'application/x-www-form-urlencoded',
              # 'HTTP_AUTHORIZATION' => 'Basic ' + ["#{username}:#{password}"].pack('m*'),
              STORE_HEADER => params[STORE_HEADER]
            )
          end

          # def username
          #   'admin@admin.org' # TODO read from conf/auth.yml or something
          # end
          # 
          # def password
          #   'admin'
          # end

          def site
            @site ||= Site.first || raise('could not find any site') # FIXME
          end
      end
    end
  end
end