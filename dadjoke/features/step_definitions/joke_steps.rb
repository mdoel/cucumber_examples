Then("I should be able to rate the joke") do
  expect(page).to have_css('.rate_joke')
end

When("I rate the joke as funny") do
  click_button('thumbs_up')
end

When("I rate the joke as not funny") do
  click_button('thumbs_down')
end

Then("I should see {int} joke(s) rated positively") do |int|
  expect(page).to have_selector '#likes', exact_text: int.to_s
end

When("I ask to rate another joke") do
  click_button('Show me another')
end

When("I should see {int} joke(s) rated negatively") do |int|
  expect(page).to have_selector '#dislikes', exact_text: int.to_s
end