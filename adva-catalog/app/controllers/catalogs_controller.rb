class CatalogsController < BaseController
  tracks :resource => :products

  attr_reader :section
  helper_method :section # TODO extend inherited_resources to always define these?
end