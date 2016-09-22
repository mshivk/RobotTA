*** Settings ***
Resource    ./resource.robot

*** Test Cases ***
Login should pass
    #Open Browser  http://localhost:7272
    Open login page
    #Input text  username_field    demo
    Give Username    demo
    Give Password   mode
    Click Button  login_button
    Sleep    2s
    Current Frame Contains    succeeded
    Welcome Page should be opened
    Click Link   logout
    [Teardown]  Close browser
    #fail    woring thing you are doing..comon!!!

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

Welcome Page should be opened
    Title should be    Welcome Page


    #fail    woring thing you are doing..comon!!!
