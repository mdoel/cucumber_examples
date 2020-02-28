Feature: Web site greeting
  As a visitor of the Dad Jokes Evaluator app
  I want to be greeted on the home page
  So I can be put in the right frame of mind for Jokes

  @javascript
  Scenario: Greeting on the home page
    Given I visit the home page
    Then I should see a welcoming greeting