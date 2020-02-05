Then(/^I should see '(.*)'$/) do |text|
  expect(body).to match(/#{text}/m)
end

Then("I should see a {string} button") do |button_label|
  expect(page).to have_selector(:link_or_button, button_label)
end

Then("I should see a joke") do
  expect(page).to have_css('.joke')
end

Then("I should be able to return to the home page") do
  expect(page).to have_css('#logo')
end

Then("I should be on the home page") do
  expect(page).to have_current_path("/")
end
  
Then("I should see the joke stats page") do
  expect(page).to have_current_path("/joke_stats")
end

Then("I should see a welcoming greeting") do
  expect(page.find("#greeting").text).to_not eql('')
end