*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]     ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${txt_loginPassword}  ${password}

Click SignIn
    Click Button    ${btn_signIn}

Verify Successful Login
    Title Should Be    Find a Flight: Mercury Tours:

Close My Browsers
    Close All Browsers