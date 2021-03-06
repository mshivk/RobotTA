*** Settings ***
Library  Selenium2Library
Library           XvfbRobot

*** Variables ***
${HOST}     localhost:7272
${URL}  http://${HOST}
${DELAY}    0
${HEADLESS}          ${False}
${BROWSER}           Firefox

 *** Keywords ***
Open login page
    Run Keyword If    '${HEADLESS}'=='True'    Start Virtual Display    1920    1080 
    Open Browser  ${URL}     ${BROWSER}  
    Maximize Browser Window
    Set Selenium speed  ${DELAY}
    
Give Username
    [Arguments]    ${userbname}
    Input text    username_field    ${userbname}

Give Password
    [Arguments]    ${password}
    Input text    password_field    ${password}

Click the Login button
     Click Button  login_button
