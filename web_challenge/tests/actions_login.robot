*Settings *
Documentation       Actions para os tests de login na página Ultimate QA

Resource            base.robot
Library    String

* Variables *
${EMPTY}
${EMAIL}
${PASSWORD}

* Keywords *

shows up a welcome message
    Avoid Timeout Error    xpath=//h2[contains(text(),'Welcome Back!')]    

I click in the Create a new account button
    Click    xpath=//a[contains(text(),'Create a new account')] 

I fill out the form
    ${EMAIL} =   Generate Random String    6    [LOWER]
    ${PASSWORD} =    Generate Random String    8    [LOWER]
    Set Global Variable    ${EMAIL}
    Set Global Variable    ${PASSWORD}  
    Fill Text    id=user[first_name]    First Name Test
    Fill Text    id=user[last_name]     Last Name Test
    Fill Text    id=user[email]         ${email}@gmail.com   
    Fill Text    id=user[password]         ${PASSWORD}     
    Click        id=user[terms]             

I click on Sign Up button
    Click    xpath=//button[contains(text(),'Sign up')] 

The system enters the successfully logged in page
    Avoid Timeout Error    xpath=//h2[contains(text(),'Products')]

I login
    Fill Text    id=user[email]         ${EMAIL}@gmail.com   
    Fill Text    id=user[password]         ${PASSWORD}     
    Click        xpath=//button[contains(text(),'Sign in')]         

I login with blank fields
    Fill Text    id=user[email]            ${EMPTY}           
    Fill Text    id=user[password]         ${PASSWORD}     
    Click        xpath=//button[contains(text(),'Sign in')]     

The system generates a error login message
    Avoid Timeout Error        xpath=//li[contains(text(),'Invalid email or password.')]

I login with invalid fields
    Fill Text    id=user[email]            newemail          
    Fill Text    id=user[password]         ${PASSWORD}     
    Click        xpath=//button[contains(text(),'Sign in')]    