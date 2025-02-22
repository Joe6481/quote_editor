Feature: Quotes

Background:
  Given I am on the quotes index page

Scenario: Creating a new quote
  When I click on "New Quote"
  And  I fill in the new quote form
  And  I click on "Create Quote"
  Then I see a new quote has been created

Scenario: Showing a quote
  Given There is an existing quote
  When  I click on the existing quote
  Then  I see the quote details

Scenario: Updating a quote
  Given There is an existing quote
  When  I click on "Edit"
  And   I fill in the edit quote form
  And   I click on "Update Quote"
  Then  I see the quote has been updated

Scenario: Deleting a quote
  Given There is an existing quote
  When  I click on "Delete"
  Then  I see the quote has been deleted
