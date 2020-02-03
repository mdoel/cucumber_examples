@vcr
Feature: Reading and Rating Jokes
  As a person thinking about whether I like Dad Jokes
  I want to see and rate jokes
  So I can see how often I like dad jokes

  Scenario: Seeing a joke
    Given I visit the home page
    When I press 'Show me a joke'
    Then I should see a joke

  Scenario: Rating a joke as funny
    Given I visit the home page
    When I press 'Show me a joke'
    Then I should be able to rate the joke
    When I rate the joke as funny
    Then I should see the joke stats page
    And I should see 1 joke rated positively

  Scenario: Rating a second joke as funny
    Given I visit the home page
    When I press 'Show me a joke'
    And I rate the joke as funny
    And I ask to rate another joke
    When I rate the joke as funny
    Then I should see 2 jokes rated positively

  Scenario: Rating a joke as not funny
    Given I visit the home page
    When I press 'Show me a joke'
    When I rate the joke as not funny
    And I should see 1 joke rated negatively

  Scenario: Rating a second joke as not funny
    Given I visit the home page
    When I press 'Show me a joke'
    And I rate the joke as not funny
    And I ask to rate another joke
    When I rate the joke as not funny
    Then I should see 2 jokes rated negatively