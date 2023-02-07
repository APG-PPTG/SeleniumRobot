*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTC
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window

    Open Browser    https://demo.nopcommerce.com/   chrome
    Maximize Browser Window

    Close Browser
