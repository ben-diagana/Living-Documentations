Feature: "Studied State"
  Scenario Outline: Swith to Studied State
    Given  a folder state ongoing
    When the analyst takes action "<Action>"
    Then the folder state should be  "<State>"
    Examples:
      | Action | State	 |
      | True   | studied |
      | False  | ongoing |