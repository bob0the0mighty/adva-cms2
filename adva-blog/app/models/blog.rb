class Blog < Section
  has_many :posts, :foreign_key => 'section_id', :dependent => :destroy, :order => 'published_at DESC'
  # has_option :posts_per_page, :default => 15

  accepts_nested_attributes_for :posts
end
