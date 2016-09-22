*** Settings ***
Resource    ./resource.robot

*** Test Cases ***
Invalid_username
    Login should fail    invalid    mode
Invalid_password
    Login should fail   demo    invali
Both invalid
    Login should fail   Invalid    invalid
Empty username
    Login should fail   ${EMPTY}    mode

Empty password
    Login should fail   mode   ${EMPTY}
Empty both
    Login should fail   ${EMPTY}    ${EMPTY}

*** Keywords ***
Login should fail
    [Arguments]    ${user}    ${pass}
    Open login page
    Give Username    ${user}
    Give Password   ${pass}
    Click the Login button
    Error Page should be opened
    [Teardown]  Close browser
*** dont execute the following case ***
Login should fail / wrong username
    #Open Browser  http://localhost:7272
    Open login page
    Input text  username_field    demos
    Input text  password_field   mode
    Click Button  login_button
    Sleep    3s
    Current Frame Contains    succeeded
    Click Link   logout

 *** Keywords ***

Error Page should be opened
    Title should be    Error Page


    #fail    woring thing you are doing..comon!!!
