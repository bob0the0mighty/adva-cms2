class PostsController < BaseController
  nested_belongs_to :blog
  before_filter :set_id, :only => :show

  filtered_attributes :post if Adva.engine?(:markup)

  protected

    def collection
      # FIXME only here for reference tracking. how can we remove this?
      @_references << [blog, :posts] if @_references
      super
    end

    def set_id
      blog = site.blogs.find(params[:blog_id])
      permalink = params.values_at(:year, :month, :day, :slug)
      params[:id] = blog.posts.by_permalink(*permalink).first.try(:id)
    end
end
