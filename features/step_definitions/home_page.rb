When /^I view the homepage$/ do
  visit("/")
end

Then /^I should see the heading "([^\"]*)"$/ do |heading|
  response.should have_selector("h1") #("h1:contains('#{heading}')")
end

Then /^I should see the title "([^\"]*)"$/ do |title|
  response.should have_selector("title:contains('#{title}')")
end
