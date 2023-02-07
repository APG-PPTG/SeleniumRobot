*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login url}=   https://admin-demo.nopcommerce.com/
${BROWSER}=  chrome


*** Keywords ***
Open My Browser
    Open Browser    ${login url}    ${BROWSER}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${login url}

Input username
    [Arguments]     ${username}
    Input Text    id:Email  ${username}

Input pwd
    [Arguments]     ${password}
    Input Text    id:Password    ${password}

Click Login Button
    Click Element   xpath://button[@class='button-1 login-button']

Click Logout Link
    Click Link    Logout
    
Error message should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard page should be visible
    Page Should Contain  Dashboard
