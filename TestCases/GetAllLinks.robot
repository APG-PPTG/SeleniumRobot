*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://www.mercurytravels.co.in/international-holidays  chrome
    Maximize Browser Window
    ${AllLinksCount}=   Get Element Count  xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List

    FOR   ${i}    IN RANGE    1   ${AllLinksCount}+1
       ${linkText}=   Get Text    xpath:(//a)[${i}]
       Log To Console    ${linkText}
    END

