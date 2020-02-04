Feature: Using the browser
  As test automation expert
  I want to see how to drive cucumber via the browser
  So I can test external apps

Scenario: Searchign google for cheese
   Given I am on the Google search page
   When I search for "Cheese!"
   Then the page title should start with "cheese"
