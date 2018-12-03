Feature: Edit a Org
  
  As a Admin
  So that I can easily edit content to my app
  I want to be able to edit a org
  
  Scenario: As an user I want to be able to navigate from the homepage to the edit org form
    Given I am on the home page
    When I click on the "List of Orgs" link
    Then I should be on the "Organizations" page
    When I click on the "Edit" link
    Then I should be on the "Editing Organization" page
    And I should see the "Name" field
    And I should see the "Description" field
    And I should see the "Contact" field
  