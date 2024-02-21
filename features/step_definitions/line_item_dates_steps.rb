Given("There is an existing line item date") do
  @line_item_date = create(:line_item_date, quote: @quote)
end

Given("There are multiple existing line item dates") do
  @line_item_dates = create_list(:line_item_date, 3, quote: @quote)
end

When("I fill in the edit line item date form") do
  fill_in "line_item_date_date", with: "2024-02-20"
end

Then("I see the multiple existing line item dates") do
  @line_item_dates.each do |line_item_date|
    expect(page).to have_content line_item_date.date.strftime("%d/%m/%Y")
  end
end

Then("I see a new line item date has been created") do
  expect(page).to have_content Time.zone.today.strftime("%d/%m/%Y")
end

Then("I see the line item date has been updated") do
  expect(page).to have_content Date.new(2024, 2, 20).strftime("%d/%m/%Y")
end

Then("I see the existing line item date has been deleted") do
  expect(page).to have_no_content @line_item_date.date
end
