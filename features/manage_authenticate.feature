Feature: Manage authenticate
  Create user and authenticate in system

  Scenario: Sign up - Happy path
    Given I am on the signup page
    And I fill in "user_email" for "test@mail.com"
    And I fill in "user_password" for "111111"
    And I fill in "user_password_confirmation" for "111111"
    And I press button "Create User"
    And I should be on the home page

  Scenario: Sign up - Failures
    Given I am on the signup page
    And I press button "Create User"
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"
    And I fill in "user_password" for "111111"
    And I press button "Create User"
    And I should see "Password doesn't match confirmation"

  Scenario: Login - Happy path
    Given I am on the login page
    And I have a user with email "test@mail.com" and password "111111"
    And I fill in "email" for "test@mail.com"
    And I fill in "password" for "111111"
    And I press button "Log in"
    And I should be on the home page
