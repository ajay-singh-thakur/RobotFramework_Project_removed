*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot



*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register


*** Test Cases ***
TC2 Registration Test
    Open my URL     ${url}      ${browser}
    Select Gender
    sleep   5
    Set FirstName       Ajay
    Set LastName        Thakur
    Set Email ID        # calling random email id generate function, so no need to give email id here
    Set Password        123456
    Confirm Password    123456
    Click On Register Button
    sleep   3
    Verify Successful Registration text
    Close My Browser