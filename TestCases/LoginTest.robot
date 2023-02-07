*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com/
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open Browser    ${SiteUrl}  ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Verify Successful Login
    Close My Browsers

