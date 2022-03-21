*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=http://demo.openemr.io/b/openemr

    Element Text Should Be    xpath=//p[contains(text(), 'most')]    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    Page Should Contain    open-source
    Title Should Be    openEMR Login

    Element Attribute Should Be     id=authUser     placeholder     Username:
    Element Attribute Should Be    partial link=Licensing    href