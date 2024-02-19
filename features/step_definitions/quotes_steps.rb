Given("There is an existing quote") do
  create(:quote)
end

When "I visit the quotes index page" do
  visit quotes_path
end

When("I fill in the new form") do
  fill_in "quote_name", with: "new quote"
end

When("I click on the existing quote") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit the existing quote") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill in the edit form") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I delete the existing quote") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see a new quote has been created") do
  expect(page).to have_content "new quote"
end

Then("I see the quote details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see the quote has been updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see the quote has been deleted") do
  pending # Write code here that turns the phrase above into concrete actions
end
