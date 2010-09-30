require File.expand_path('../../test_helper', __FILE__)

module AdvaStatic
  class ImportPostTest < Test::Unit::TestCase
    include Adva::Static::Import::Model, TestHelper::Static

    test "recognizes a Post importer from a slugged post path (e.g. /2010-10-10-post.html)" do
      sources = [source('2010-10-10-post.html')]
      posts = Post.recognize(sources)
      assert sources.empty?
      assert_equal ['2010-10-10-post'], posts.map(&:path)
    end

    test "recognizes a Post importer from a nested directory post path (e.g. /2010/10/10/post.html)" do
      sources = [source('2010/10/10/post.html')]
      posts = Post.recognize(sources)
      assert sources.empty?
      assert_equal ['2010/10/10/post'], posts.map(&:path)
    end

    test "has Post attributes" do
      post = Post.new(source('2010-10-10-post.html'))
      expected = { :site_id => '', :section_id => '', :title => 'Post', :body => '', :created_at => DateTime.new(2010, 10, 10) }
      assert_equal expected, post.attributes
    end

    test "loads post attributes from the source file" do
      setup_root_blog
      post = Post.new(source('2008/07/31/welcome-to-the-future-of-i18n-in-ruby-on-rails.yml'))
      expected = { :title => 'Welcome To The Future Of I18n In Ruby On Rails', :body => 'Welcome to the future' }
      assert_equal expected, post.attributes.slice(:title, :body)
    end

    test "finds a Post model corresponding to a Post importer" do
      setup_root_blog_record
      post = Post.new(source('2008/07/31/welcome-to-the-future-of-i18n-in-ruby-on-rails.html'))
      assert_equal ::Post.find_by_slug('welcome-to-the-future-of-i18n-in-ruby-on-rails'), post.record
    end
  end
end