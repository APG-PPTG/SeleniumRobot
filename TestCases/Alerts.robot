*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Alert
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Click Element    xpath://*[@id="HTML9"]/div[1]/button
    #Handle Alert    accept
    #Handle Alert    leave
    Handle Alert    dismiss
    #Alert Should Be Present    Press a button
    Sleep   3s
