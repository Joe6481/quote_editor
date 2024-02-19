Feature: Quotes

Background:
  Given I visit the quotes index page

Scenario: Creating a new quote
  When I click on "New Quote"
  And  I fill in the new form
  And  I click on "Create Quote"
  Then I see a new quote has been created

# @wip
# Scenario: Showing a quote
#   Given There is an existing quote
#   When  I click on the existing quote
#   Then  I see the quote details

# Scenario: Updating a quote
#   Given There is an existing quote
#   When  I edit the existing quote
#   And   I fill in the edit form
#   And   I click on "Update quote"
#   Then  I see the quote has been updated

# Scenario: Deleting a quote
#   Given There is an existing quote
#   When  I delete the existing quote
#   Then  I see the quote has been deleted
