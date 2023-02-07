*** Settings ***

Suite Setup     Log To Console    Opening Browser
Suite Teardown  Log To Console    Closing Browser

Test Setup  Log To Console      Login to App
Test Teardown   Log To Console    Logout from App

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid Recharge Test Case
 
TC2 Postpaid Recharge
    Log To Console    This is postpaid Recharge Test Case

TC3 Search
    Log To Console    This is search functionality 
    
TC4 Advanced Search 
    Log To Console    This is Advanced Search