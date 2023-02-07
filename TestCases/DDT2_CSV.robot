*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Resource    DDT.robot
Library     DataDriver  ../TestData/LoginData.csv

Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***
LoginTestWithCSV ${username} ${password}

*** Keywords ***
Invalidlogin
    [Arguments]  ${username}    ${password}
    Input username    ${username}
    Sleep   3s
    Input pwd    ${password}
    Click Login Button
    Error message should be visible


