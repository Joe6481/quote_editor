Feature: Line Item Dates

Background:
  Given I am on the quotes index page
  And   There is an existing quote

Scenario: Viewing a quote's line item dates
  Given There are multiple existing line item dates
  When  I click on the existing quote
  Then  I see the multiple existing line item dates

Scenario: Creating a new line item date
  When I click on the existing quote
  And  I click on "New Line Item Date"
  And  I click on "Create Line item date"
  Then I see a new line item date has been created

Scenario: Updating a line item date
  Given There is an existing line item date
  When  I click on the existing quote
  And   I click on "Edit"
  And   I fill in the edit line item date form
  And   I click on "Update Line item date"
  Then  I see the line item date has been updated

Scenario: Deleting a quote
  Given There is an existing line item date
  When  I click on the existing quote
  When  I click on "Delete"
  Then  I see the existing line item date has been deleted
