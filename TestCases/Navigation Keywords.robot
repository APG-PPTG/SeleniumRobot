*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationTest
    Open Browser    https://www.google.com     chrome
    # Gets the URL
    ${loc}  Get Location
    Log To Console  ${loc}

    Go To    https://www.bing.com/
    ${loc}  Get Location

    Go Back
    ${loc}  Get Location
    Log To Console    ${loc}
