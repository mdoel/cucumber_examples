Given(/^I visit the home page$/) do
  visit('/')
end

When("I click the site logo") do
  click_link('logo')
end