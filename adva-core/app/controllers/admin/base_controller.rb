require 'inherited_resources'

class Admin::BaseController < InheritedResources::Base
  before_filter :authenticate_user!

  respond_to :html
  layout 'admin'

  helper :admin
  helper_method :resources, :site

  def self.responder
    Adva::Responder
  end

  def resource
    super
  rescue ActiveRecord::RecordNotFound
    build_resource
  end

  def resources
    with_chain(resource)
  end
  
  def site
    @site ||= if params[:site_id]
      Site.find(params[:site_id])
    elsif controller_name == "site"
      Site.find(params[:id]) rescue nil
    end
  end

  def with_chain(object)
    super.unshift(:admin)
  end
end