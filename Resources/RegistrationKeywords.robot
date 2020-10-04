*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py


*** Keywords ***
Open my URL
     [Arguments]        ${SiteURL}    ${Browser}
     open browser       ${SiteURL}      ${Browser}
     maximize browser window

Select Gender
#      click element   ${radio_selectGender}
      select radio button    Gender  M

Set FirstName
    [Arguments]     ${firstname}
    input text      ${text_FirstName}  ${firstname}

Set LastName
    [Arguments]     ${lastname}
    input text      ${text_LastName}   ${lastname}

Set Email ID
    [Arguments]     ${email}
    input text      ${text_EmailID}    ${email}

Set Password
    [Arguments]     ${pswd}
    input text      ${text_Password}   ${pswd}

Confirm Password
    [Arguments]     ${confirmpswd}
    input text      ${text_Confirmpassword}    ${confirmpswd}

Click On Register Button
    click button    ${btn_RegisterButton}

Verify Successful Registration text
    page should contain                 Your registration completed

Close My Browser
    close all browsers
