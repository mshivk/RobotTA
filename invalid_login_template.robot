*** Settings ***
Resource    ./resource.robot
Test Template   Login should fail
Suite Setup     Open login page
Suite Teardown  Close browser

*** Test Cases ***      USERNAME    PASSWORD
Invalid_username        invalid     mode
Invalid_password        demo       invalid
Both invalid            invalid     invalid
Empty username          ${EMPTY}    ${EMPTY}
Empty password          mode         ${EMPTY}
Both Empty               ${EMPTY}    ${EMPTY}
 

*** Keywords ***
Login should fail
    [Arguments]    ${user}    ${pass}
    Go to login page
    Give username   ${user}
    Give password   ${pass}
    Click the Login button
    Error Page should be opened

Go to login page
    Go to   ${URL}


Error Page should be opened
    Title should be    Error Page


    #fail    woring thing you are doing..comon!!!
