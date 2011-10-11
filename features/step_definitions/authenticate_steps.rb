Given /^I am on the signup page$/ do
  visit signup_path
end

Given /^I should be on the home page$/ do
  current_path = URI.parse(current_url).path
  current_path.should == "/"
end

Given /^I am on the login page$/ do
  visit login_path
end

Given /^I have a user with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  User.create!(:email => email, :password => password, :password_confirmation => password)
end
