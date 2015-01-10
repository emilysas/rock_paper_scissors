require 'cucumber/rspec/doubles'

# Before do
#   allow(Rock_Paper_Scissors).to receive(:computer_choice){"Scissors"}
# end

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

When(/^I choose "(.*?)"$/) do |option|
  choose(option)
end


