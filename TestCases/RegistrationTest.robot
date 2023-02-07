*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://www.newtours.demoaut.com

*** Test Cases ***
Registration Test
    Open my Browser     ${SiteUrl}  ${Browser}
    Click Register Link
    Enter FirstName     David
    Enter LastName      John
    Enter Phone     1234567890
    Enter Email     davidjohn@gmail.com
    Enter Address   Toronto
    Enter Address2  Canada
    Enter City      Toronto
    Enter State     Ontario
    Enter PostalCode    M1P 4N5
    Enter Country   Canada
    Enter UserName  johnxyz
    Enter Password  johnxyz
    Enter ConfirmPass   johnxyz
    Click SubmitBtn
    Verify Successful Registration
    Close My Browsers