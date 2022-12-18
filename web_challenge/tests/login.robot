* Settings *
Documentation       Arquivo feature para testes de cadastro e login na maquina de Ultimate QA

Resource            base.robot

Test Setup          Start Session


* Test Cases *
    
Scenario: Access Ultimate QA page
    Then shows up a welcome message

Scenario: Create a new account in Ultimate QA page
    When I click in the Create a new account button
    And I fill out the form
    And I click on Sign Up button
    Then The system enters the successfully logged in page

Scenario: Login with the newly created account
    When I login
    Then The system enters the successfully logged in page

Scenario: Login with blank fields
    When I login with blank fields
    Then The system generates a error login message

Scenario: Login with invalid fields
    When I login with invalid fields
    Then The system generates a error login message
