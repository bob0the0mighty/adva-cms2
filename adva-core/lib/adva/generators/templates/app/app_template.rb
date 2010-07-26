gem 'devise', '1.1.rc2'
gem 'simple_form'

gem 'adva-core',      :path => "#{config[:gem_root]}/adva-core"
gem 'adva-blog',      :path => "#{config[:gem_root]}/adva-blog"
gem "adva-cart",      :path => "#{config[:gem_root]}/adva-cart"
gem "adva-contacts",  :path => "#{config[:gem_root]}/adva-contacts"
gem 'adva-catalog',   :path => "#{config[:gem_root]}/adva-catalog"
gem 'adva-user',      :path => "#{config[:gem_root]}/adva-user"

# gem 'silence_log_tailer'

remove_file 'public/index.html'