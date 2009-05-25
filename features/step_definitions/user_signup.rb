When /^I visit the registration page$/ do
  visit "/register"
end

When /^I complete the registration form$/ do
  fill_in "email", :with => "user@demo.com"
  fill_in "username", :with => "user1"
  fill_in "password", :with => "password"
  click_button "register"
end

Then /^I should successfully create an account$/ do
  response.should contain(/Your account was created/)
end
