*** Settings ***
Library     SeleniumLibrary

Variables   ../PageObjects/RegistrationPage.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Click Register Link
    Click Link      ${link_Reg}

Enter FirstName
    [Arguments]     ${firstName}
    Input Text      ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]     ${lastName}
    Input Text    ${txt_lastName}   ${lastName}

Enter Phone
    [Arguments]     ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]     ${email}
    Input Text    ${txt_email}    ${email}

Enter Address
    [Arguments]     ${address}
    Input Text    ${txt_add1}    ${address}

Enter Address2
    [Arguments]     ${address}
    Input Text    ${txt_add2}    ${address}

Enter City
    [Arguments]     ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]     ${state}
    Input Text    ${txt_state}    ${state}

Enter PostalCode
    [Arguments]     ${postal}
    Input Text    ${txt_postCode}    ${postal}

Enter Country
    [Arguments]     ${country}
    Select From List By Label    ${drp_country}     ${country}

Enter UserName
    [Arguments]     ${userName}
    Input Text    ${txt_userName}    ${userName}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_Password}    ${password}

Enter ConfirmPass
    [Arguments]     ${cpassword}
    Input Text    ${txt_conformedPassword}    ${cpassword}

Click SubmitBtn
    Click Element    ${btn_submit}

Verify Successful Registration
    Page Should Contain    Thank You for registering.

Close My Browsers
    Close All Browsers