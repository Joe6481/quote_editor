Given "I am on the quotes index page" do
  visit quotes_path
end

Given("There is an existing quote") do
  @quote = create(:quote)
  refresh
end

When("I fill in the new quote form") do
  fill_in "quote_name", with: "new quote"
end

When("I click on the existing quote") do
  click_on @quote.name
end

When("I fill in the edit quote form") do
  fill_in "quote_name", with: "updated quote"
end

Then("I see a new quote has been created") do
  expect(page).to have_content "new quote"
end

Then("I see the quote details") do
  expect(page).to have_content @quote.name
  expect(page).to have_content "Back to quotes"
end

Then("I see the quote has been updated") do
  expect(page).to have_content "updated quote"
  expect(page).to have_no_content @quote.name
end

Then("I see the quote has been deleted") do
  expect(page).to have_no_content @quote.name
end
