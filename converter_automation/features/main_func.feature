@main
Feature: Main functionality

    Scenario: User is able to dismiss help
      Given I land on help popup
      When I click on Got it button
      Then I land on Area screen