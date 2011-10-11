Given /^I am on the post page$/ do
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
