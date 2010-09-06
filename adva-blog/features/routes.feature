Feature: Routes
  Scenario: Routes
    Given the routes are loaded
    Then the following routes should be recognized:
      | method | path                                      | controller          | action  | params                                              |

      # adva-blog
      | GET    | /blogs/1                                  | blogs               | show    | id: 1                                               |
      | GET    | /blogs/1/2009                             | blogs               | show    | id: 1, year: 2009                                   |
      | GET    | /blogs/1/2009/1                           | blogs               | show    | id: 1, year: 2009, month: 1                         |
      | GET    | /blogs/1/2009/1/1                         | blogs               | show    | id: 1, year: 2009, month: 1, day: 1                 |
      | GET    | /blogs/1/2009/1/1/foo                     | posts               | show    | blog_id: 1, year: 2009, month: 1, day: 1, slug: foo |

      | GET    | /admin/sites/1/blogs/1/posts              | admin/posts         | index   | site_id: 1, blog_id: 1                              |
      | POST   | /admin/sites/1/blogs/1/posts              | admin/posts         | create  | site_id: 1, blog_id: 1                              |
      | GET    | /admin/sites/1/blogs/1/posts/new          | admin/posts         | new     | site_id: 1, blog_id: 1                              |
      | GET    | /admin/sites/1/blogs/1/posts/1            | admin/posts         | show    | site_id: 1, blog_id: 1, id: 1                       |
      | PUT    | /admin/sites/1/blogs/1/posts/1            | admin/posts         | update  | site_id: 1, blog_id: 1, id: 1                       |
      | DELETE | /admin/sites/1/blogs/1/posts/1            | admin/posts         | destroy | site_id: 1, blog_id: 1, id: 1                       |
      | GET    | /admin/sites/1/blogs/1/posts/1/edit       | admin/posts         | edit    | site_id: 1, blog_id: 1, id: 1                       |
