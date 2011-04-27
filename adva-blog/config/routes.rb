Rails.application.routes.draw do
  # overwrite admin/blog#show to point to admin/posts#index instead
  # can this be simplified? haven't had any luck putting it into the resource block
  get 'admin/sites/:site_id/blogs/:blog_id', :to => 'admin/posts#index', :as => 'admin_site_blog'

  namespace :admin do
    namespace :sites do
      resources :blogs do
        resources :posts
      end
    end
  end

  constraints :year => /\d{4}/, :month => /\d{1,2}/, :day => /\d{1,2}/ do
    get 'blogs/:blog_id(/:year(/:month(/:day)))', :to => 'posts#index', :as => :blog
  end

  constraints :permalink => %r(\d{4}/\d{1,2}/\d{1,2}/[\w-]+) do
    get 'blogs/:blog_id/*permalink.:format', :to => "posts#show"
    get 'blogs/:blog_id/*permalink', :to => "posts#show", :as => :blog_post
  end
end
