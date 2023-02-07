*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # This is the parent lebel name and text
    Select From List By Label   name:RESULT_RadioButton-9   Morning
    Sleep    3
    # This is the parent lebel name and index
    Select From List By Index   name:RESULT_RadioButton-9    2
    # This is the parent lebel name and value attribute
    Select From List By Value   name:RESULT_RadioButton-9    Radio-2
*** Keywords ***
