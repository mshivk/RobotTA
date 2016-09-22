*** Settings ***
Library  Selenium2Library

*** Variables ***
${HOST}     localhost:7272
${URL}  http://${HOST}
${DELAY}    0

 *** Keywords ***
Open login page
    Open Browser  ${URL}
    Set Selenium speed  ${DELAY}
Give Username
    [Arguments]    ${userbname}
    Input text    username_field    ${userbname}

Give Password
    [Arguments]    ${password}
    Input text    password_field    ${password}

Click the Login button
     Click Button  login_button
