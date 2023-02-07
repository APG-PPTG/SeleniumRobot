*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    Select Frame   packageListFrame  #id name xpath any can be used
    Click Link    org.openqa.selenium
    Unselect Frame

    sleep   3

    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame

    Sleep    3
    Select Frame    classFrame
    Click Link    Help
    Unselect Frame
    Sleep    3
    Close Browser