@area
Feature: User is able to convert area units

  Background:
    Given I click on Got it button



  @wip
  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header

  @menu
  Scenario Outline: user is able to convert default units
    Given I click on Clear button
    When I enter "<target>" to From field
    Then I get "<result>" in To field

    Examples:
    |target| result  |
    |   1  | 1000000 |
    |   2  | 2000000 |
    |   3  | 3000000 |