*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Properties/LoginAndCred.robot

*** Variables ***
#${browser}  headlessfirefox
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/
${user}     Admin
${pswd}     admin123


*** Test Cases ***
TC1 Login Test
    Open My Browser     ${url}      ${browser}
    Set UserName    ${user}
    Set Password    ${pswd}
    Click On Login Button
    sleep   3
    Verify Successful Login
    Closing the browser
