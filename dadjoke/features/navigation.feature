Feature: Navigation
  As a person who likes jokes
  I want to be able to get around the dad joke evaluator web app

  Scenario: Visiting the home page
    Given I visit the home page
    Then I should see 'Dad Joke Evaluator'
    And I should see a 'Show me a joke' button

  @vcr
  Scenario: Getting back to the home page
    Given I visit the home page
    When I press 'Show me a joke'
    Then I should be able to return to the home page
    When I click the site logo
    Then I should be on the home page