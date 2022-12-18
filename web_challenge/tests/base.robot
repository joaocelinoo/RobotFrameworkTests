** Settings **
Library     Browser

Resource    actions_login.robot


* Variables * 
${DEFAULT_TIMEOUT}  180

* Keywords *
Start Session
    Set Browser Timeout     3m
    New Browser     chromium    false
    New Page        https://courses.ultimateqa.com/users/sign_in

Avoid Timeout Error
    [Arguments]     ${element}
    Wait For Elements State    ${element}    visible    timeout=180 s
