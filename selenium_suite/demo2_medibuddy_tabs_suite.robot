*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     url=https://www.medibuddy.in/
    Click Element     xpath=//button[text()="Not Now"]
    Click Element     link=For Employer
    Switch Window     MediBuddy LaunchPad
    Input Text     id=getInTouchName     Anupriya
    Input Text     id=getInTouchEmail    anupriya@gmail.com
    Input Text     id=getInTouchMobile     6969
    Input Text     id=getInTouchEmpCount     1
    Close Window








