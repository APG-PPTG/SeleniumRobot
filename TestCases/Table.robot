*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table Information
    Open Browser    https://cosmocode.io/automation-practice-webtable/  chrome
    Maximize Browser Window
    Sleep    3
    ${rows}  Get Element Count    xpath://*[@id='countries']//tr
    Log To Console  ${rows}

    ${colCount}=   Get Element Count  xpath://*[@id='countries']//tr
    Log To Console    ${colCount}
    #xpath://*[@id='countries']//tr[1]//td

    ${firstRow}=    Get Element Count    xpath://*[@id='countries']//tr[1]//td

    FOR   ${i}    IN RANGE    1   ${firstRow}+1
       ${linkText}=   Get Text    xpath:(//*[@id='countries']//tr[1]//td)[${i}]
       Log To Console    ${linkText}
    END

    Table Column Should Contain    xpath://*[@id='countries']   4   Currency
    Table Row Should Contain    xpath://*[@id='countries']  3   Albania
    Table Cell Should Contain   xpath://*[@id='countries']  2   3   Kabul

