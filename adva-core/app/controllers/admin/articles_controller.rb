class Admin::ArticlesController < Admin::BaseController
  nested_belongs_to :site, :section, :singleton => true
  
  def index
    redirect_to resources[0..-2]
  end
end