***Settings***
Library             SeleniumLibrary
Suite Setup          Open Browser            ${urlWeb}       ${BROWSERS}
Suite Teardown       Close Browser
Test Template        Test Negative Case Login

**Variables***
${urlWeb}       https://www.saucedemo.com/
${BROWSERS}     gc

***Keywords***
Test Negative Case Login
    [Arguments]                     ${username}                     ${password}
    Input Text                      //input[@id="user-name"]        ${username}
    Input Text                      //input[@id="password"]         ${password}
    Click Element                   //input[@id="login-button"]
    Page Should Contain                                             Username and password do not match
 


***Test Cases***
Test Negative Case Login for User A              userA               passwordA
Test Negative Case Login for User B              userB               passwordB
Test Negative Case Login for User C              userC               passwordC


# Test Positive Case Login
#     Maximize Browser Window
#     Input Text                      //input[@id="user-name"]        standard_user
#     Input Text                      //input[@id="password"]         secret_sauce
#     Click Element                   //input[@id="login-button"]
#     Page Should Contain                                             Products
#     Sleep                           5s