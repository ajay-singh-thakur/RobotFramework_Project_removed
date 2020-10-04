*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot



*** Variables ***
#${browser}      headlesschrome
${browser}  chrome
${url}          http://demowebshop.tricentis.com/register


*** Test Cases ***
Registration Test
    Open my URL     ${url}      ${browser}
    Select Gender
    Set FirstName       Ajay
    Set LastName        Thakur
    Set Email ID        aj1238@mymail.com
    Set Password        123456
    Confirm Password    123456
    Click On Register Button
    sleep   3
    Verify Successful Registration text
    Close My Browser
