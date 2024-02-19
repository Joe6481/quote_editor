Given "I am on the quotes index page" do
  visit quotes_path
end

Given("There is an existing quote") do
  @quote = create(:quote)
  refresh
end

When("I fill in the new form") do
  fill_in "quote_name", with: "new quote"
end

When("I click on the existing quote") do
  click_on @quote.name
end

When("I fill in the edit form") do
  fill_in "quote_name", with: "updated quote"
end

When("I delete the existing quote") do
  pending # Write code here that turns the phrase above into concrete actions
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
end

Then("I see the quote has been deleted") do
  pending # Write code here that turns the phrase above into concrete actions
end
