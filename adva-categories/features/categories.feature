Feature: Managing categories
  Background:
    Given a site with a blog named "Blog"
      And the following categories:
        | section | name        |
        | Blog    | Programming |
        | Blog    | Design      |
      And the following posts:
        | section | categories  | title                  |
        | Blog    |             | uncategorized post     |
        | Blog    | Programming | post about programming |
        | Blog    | Design      | post about design      |
    Given I am signed in with "admin@admin.org" and "admin"
      And I am on the admin "Blog" section categories page

  Scenario Outline: Creating a category
    When I follow "New Category"
    Then I should see a new category form
    When I fill in "Name" with "<name>"
     And I press "Create category"
    Then I should see "<message>"
     And I should see an <action> category form with the following values:
      | name | <name> |
    Examples:
      | name        | message                       | action |
      | Development | Category successfully created | edit   |
      |             | Category could not be created | new    |

  Scenario Outline: Updating a category
    When I follow "Programming"
    Then I should see an edit category form
    When I fill in "Name" with "<name>"
     And I press "Update category"
    Then I should see "<message>"
     And I should see a edit category form with the following values:
      | name | <name> |
    Examples:
      | name        | message                       |
      | Development | Category successfully updated |
      |             | Category could not be updated |

  Scenario: Deleting a category from the admin categories list
    When I follow "Delete" within the "Programming" row
    Then I should see "Category successfully deleted"
     And I should see a categories list
     But I should not see "Programming"

  Scenario: Deleting a category from the admin category page
    When I follow "Programming"
    When I follow "Delete"
    Then I should see "Category successfully deleted"
     And I should see a categories list
     But I should not see "Programming"


  # Scenario: Viewing an unfiltered blog categories list
