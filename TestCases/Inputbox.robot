*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    #Storing webelement in a variable
    ${"email_txt"}  Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    JohnDavi@gmail.com
    Sleep    7
    Clear Element Text  ${"email_txt"}
    Sleep    7
    Close Browser

*** Keywords ***
