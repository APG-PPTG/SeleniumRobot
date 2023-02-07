*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [Tags]  sanity
    Log To Console    This is user reg test
    Log To Console    User Registration test complete

TC2 LoginTest
    [Tags]  regression
    Log To Console    This is Login test
    Log To Console    Login Test is over

TC3 Change user settings
    [Tags]  regression
    Log To Console    This is changing user settings test
    Log To Console    Change user settings test is over

TC4 Logout Test
    [Tags]  sanity
    Log To Console    This is Logout test
    Log To Console    Logout test is over
