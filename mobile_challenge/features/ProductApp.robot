* Settings *    

Resource            ${EXECDIR}/base/base.robot
Resource            ${CURDIR}/step_definitions/actions_productApp.robot

Test Setup          Open Test Application


* Test Cases *
    
Scenario: Access Ultimate QA page
    Then The app is accessed successfully

Scenario: Create a new product registration
    When I click on New Button
    And I fill the form
    And I click save
    Then The system will show the new record created on the home page

Scenario: Validate if when you registre a new product will shows up on home page
    When I create a new product
    Then The system will show the new record created on the home page
    When I create a new product
    Then The system will show the second new record created on the home page

