*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    [Documentation]     Validates whether user gets error message for mobile number or not Mobile Number should be 10 digits
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Anupriya
    Input Text    id=getInTouchEmail     anupriya@gmail.com
    Input Text    id=getInTouchMobile     123456
    Input Text    id=getInTouchDesignation     employee
    Input Text    id=getInTouchEmpCount     1
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    //div[contains(text(),'digits')]    Mobile Number should be 10 digits
    [Teardown]      Close Browser

