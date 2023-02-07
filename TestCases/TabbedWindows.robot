*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindows
    Open Browser    http://demo.automationtesting.in/Windows.html   chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button

    Switch Window    title=Selenium
    Click Link    Projects
    Sleep    3
    Close Browser