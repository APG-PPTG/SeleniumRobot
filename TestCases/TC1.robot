*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest
    #Create Webdriver    chrome  executable_path="D:\Selenium\SeleniumWebDriverDrivers\BrowserDriver\chromedriver_win32\chromedriver.exe"
    # Copy the chrome.exe file in the C:\Users\gomes\AppData\Local\Programs\Python\Python310\Scripts
    Open Browser    ${url}  ${browser}
    loginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link  xpath://a[@class='ico-login']
    Input Text    id:Email  pavanoltraining@gmail.com
    Input Text    id:Password  Test@123
    Click Element    xpath://button[@class='button-1 login-button']
