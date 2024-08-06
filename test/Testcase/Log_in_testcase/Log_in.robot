*** Settings ***
Library    SeleniumLibrary
Resource   ../../Resource/Variables.robot

*** Variables ***
${BROWSER}    chrome
${URL}        https://dev.app.agnoshealth.com/ai_dashboard/login/
${sign_in_button}    //*[@id="root"]/div/div/div/div[2]/div[3]/button

*** Test Cases ***
TC_001 Verify that the user is able to login with valid credentials
    [Documentation]    Verify that the user is able to login with valid credentials.
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=Email    ${VALID_EMAIL}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Button    ${sign_in_button}
    Wait Until Page Contains    Diagnosis List
    [Teardown]    Close Browser
   
TC_002 Invalid Login
    [Documentation]    Verify that the user cannot log in with a valid username and invalid password.
    Open Browser    ${URL}    ${BROWSER} 
    Input Text    id=Email    ${VALID_EMAIL}
    Input Password    id=password  ${INVALID_PASSWORD}
    Click Button    ${sign_in_button}     
    wait Until Page Contains    Wrong email or password. Please try again
    [Teardown]    Close Browser

TC_004 Verify that the user is not able to log in with a blank username or password
    [Documentation]    Verify that the user is not able to log in with a blank username or password.
    Open Browser    ${URL}    ${BROWSER}
    Element Should Be Disabled    ${sign_in_button}
    [Teardown]    Close Browser


TC_005 Verify that the Show Password button is working properly
    [Documentation]    Verify that the "Show Password" button correctly toggles the visibility of the password.
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=Email    ${VALID_EMAIL}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Element    //*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/img
    Element Attribute Value Should Be    id=password    type    text
    Click Element    //*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/img
    Element Attribute Value Should Be    id=password    type    password
    [Teardown]    Close Browser

