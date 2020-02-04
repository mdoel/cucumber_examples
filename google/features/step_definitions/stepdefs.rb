Before do
  @driver = Selenium::WebDriver.for :safari
end

Given(/^I am on the Google search page$/) do
  @driver.navigate.to "http://google.com"
end

When(/^I search for "([^"]*)"$/) do |term|
  element = @driver.find_element(name: "q")
  element.send_keys term
  element.submit
end

Then(/^the page title should start with "([^"]*)"$/) do |term|
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.title.downcase.start_with? term }
end