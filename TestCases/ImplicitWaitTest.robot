*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
RegTest
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    # Implicit Wait is applicable for every element
    Set Selenium Implicit Wait    10 seconds
    ${time}=    Get Selenium Timeout
    Select Radio Button  Gender  M
    Input Text  name:FirstName1  David
    Input Text  name:LastName   John
    Input Text  name:Email  djohn@gmail.com
    Input Text  name:Password   davidjohn
    Input Text  ConfirmPassword    davidjohn

*** Keywords ***
