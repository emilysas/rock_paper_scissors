Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "(.*?)"$/) do |button|
  click_on(button)
end