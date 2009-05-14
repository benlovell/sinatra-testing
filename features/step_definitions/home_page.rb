When /^I view the homepage$/ do
  visit("/")
end

Then /^I should see the heading "([^\"]*)"$/ do |heading|
  #require 'ruby-debug'
  #debugger
  response.should have_selector("h1")
end

Then /^I should see the title "([^\"]*)"$/ do |title|
  response.should have_selector("title")
end
