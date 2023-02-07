*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
# Suite Setup happens only once
Suite Setup  Open My Browser
# Suite Teardown happens only once
Suite Teardown  Close Browsers
# For Data Driven we need to do this Test Template
Test Template   Invalid Login

*** Test Cases ***      username                password
Valid User Empty Pwd    admin@yourtore.com      ${EMPTY}
Valid User InValid Pwd  admin@yourtore.com      xyz
InValid User Valid Pwd  adm@yourtore.com        admin
Invalid User empty Pwd  adm@yourtore.com        ${EMPTY}
Invalid User Invalid Pwd    adm@yourtore.com    xyz

*** Keywords ***
Invalid Login
    [Arguments]     ${username}        ${password}
    Input username  ${username}
    Input pwd   ${password}
    Click Login Button
    Error message should be visible