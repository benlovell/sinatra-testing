When /^I view the homepage$/ do
  visit "/"
end

Then /^I should see the heading "([^\"]*)"$/ do |heading|
  response.should have_tag("h1", :content => heading)
end

Then /^I should see the title "([^\"]*)"$/ do |title|
  response.should have_tag("title", :content => title)
end
