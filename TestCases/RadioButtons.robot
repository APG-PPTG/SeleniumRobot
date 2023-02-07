*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    # Select Radio Button    name value of the radio button
    #Select Radio Button  RESULT_RadioButton-7    Radio-1
    Click Element    xpath://label[text()='Female']
    Click Element    xpath://label[text()='Sunday']
    Click Element  xpath://label[text()='Friday']

*** Settings ***
