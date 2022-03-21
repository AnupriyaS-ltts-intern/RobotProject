*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr

    Element Text Should Be    xpath=//p[contains(text(),'most')]    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    Element Should Contain    xpath=//p[contains(text(),'most')]    open-source Electronic Health Record

    Page Should Contain    open-source Electronic Health Record
    Title Should Be    OpenEMR Login

    Element Attribute Value Should Be    id=authUser    placeholder    Username:
    Element Attribute Value Should Be    partial link=Licensing    href    http://demo.openemr.io/b/openemr/acknowledge_license_cert.html

TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr
    ${text}      Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${text}
    Should Be Equal    ${text}    The most popular open-source Electronic Health Record and Medical Practice Management solution.

    ${placeholder_value}    Get Element Attribute    id=authUser    placeholder
    Log To Console    ${placeholder_value}