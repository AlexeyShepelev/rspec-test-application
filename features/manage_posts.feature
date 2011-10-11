Feature: Manage posts
  Create posts and view post list after create

  Scenario: New post - Happy path
    Given I am a logged in user
    And I am on the post page
    And I press link "New Post"
    And I fill in "post_title" for "Post1"
    And I press button "Create Post"
    Then I should see "Post1"
