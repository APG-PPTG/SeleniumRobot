*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
TC1
    launchBrowser  ${url}  ${browser}
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
launchBrowser
    [Arguments]  ${appurl}   ${appbrowser}
    Open Browser    ${appurl}   ${appbrowser}
    Maximize Browser Window

