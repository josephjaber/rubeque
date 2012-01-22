Feature: User registration
  In order to allow users to record his or her solutions and score
  a user
  wants to register an acount

  Scenario: A user registers his or her account
    When I go to the home page
    And I go to register
    And I fill in a username
    And I fill in a bad email address
    And I fill in a password with confirmation
    And I click signup
    Then I should see some error messages
    And I fill in a username
    And I fill in an email address
    And I fill in a password with confirmation
    And I click signup
    Then I should be on the homepage
    And I should see a success message
    And there should be a new user account
