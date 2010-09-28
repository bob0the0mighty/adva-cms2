Factory.define :site do |f|
  f.account(Account.first || Account.create!)
  f.name  'adva-cms'
  f.host  'www.example.com'
  f.title 'adva-cms'
  f.sections_attributes [{
    :type => 'Page',
    :name => 'Home',
    :article_attributes => {
      :body => 'Body'
    }
  }]
end

Factory.define :section do |f|
  f.site { Site.first || Factory(:site) }
  f.name 'Home'
end

Factory.define :page do |f|
  f.site { Site.first || Factory(:site) }
  f.name 'Home'
end