Given /^I am on t"I should be on the home page"he post page$/ do
  visit posts_path
end

Given /^I press link "([^"]*)"$/ do |arg1|
  click_link arg1
end

Given /^I fill in "([^"]*)" for "([^"]*)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

Given /^I press button "([^"]*)"$/ do |arg1|
  click_button arg1
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert page.has_content?(arg1)
end

Given /^I am a logged in user$/ do
  Given "I am on the login page"
  And "I have a user with email \"test@mail.com\" and password \"111111\""
  And "I fill in \"email\" for \"test@mail.com\""
  And "I fill in \"password\" for \"111111\""
  And "I press button \"Log in\""
  And "I should be on the home page"
end
