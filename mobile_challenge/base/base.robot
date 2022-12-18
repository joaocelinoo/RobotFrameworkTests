*** Settings ***
Library    AppiumLibrary


*** Variables ***

*** Keywords ***

Open Test Application
    Open Application    http://localhost:4723/wd/hub	platformName=Android	deviceName=emulator-5554	appPackage=br.com.pztec.estoque    appActivity=br.com.pztec.estoque.Inicio    automationName=Uiautomator2
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Click Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button
