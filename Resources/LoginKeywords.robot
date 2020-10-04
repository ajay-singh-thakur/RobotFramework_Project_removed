*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py




*** Keywords ***
Open My Browser
    [Arguments]     ${SiteURL}     ${browser}
    open browser    ${SiteURL}     ${browser}
    maximize browser window

Set UserName
    [Arguments]     ${username}
    Input Text      ${text_loginuserName}   ${username}

Set Password
    [Arguments]     ${password}
    Input text      ${text_loginPassword}   ${password}

Click On Login Button
    click button   ${btn_loginbutton}

Verify Successful Login
    title should be     OrangeHRM

Closing the browser
    close all browsers




