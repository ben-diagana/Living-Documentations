Feature: Switch from Received to Ongoing state
  Scenario Outline: State Ongoing
    Given  a received folder
    When the duration "<Duration>" hours is elapsed
    Then the folder state should be  "<State>"
    Examples:
    | Duration | State |
    | 0        | received |
    | 23       | received |
    | 24       | ongoing  |
    | 25       | ongoing  |