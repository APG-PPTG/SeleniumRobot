*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capture Screen Shot TC
    Open Browser    https://opensource-demo.orangehrmlive.com/  chrome
    Sleep    3
    Input Text  username  David
    Input Password  password  admin123
    Capture Element Screenshot    xpath://*[@alt='company-branding']    TestCases/Elem.png
    Maximize Browser Window
    Capture Page Screenshot    TestCases/LoginTC.png
