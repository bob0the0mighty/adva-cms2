Adva::Registry.set :redirect, {
  'admin/categories#create' => lambda { |c| c.edit_url },
  'admin/categories#update' => lambda { |c| c.edit_url },
  'admin/categories#destroy' => lambda { |c| c.index_url }
}
