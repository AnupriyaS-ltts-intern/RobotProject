*** Settings ***
Library    String
*** Test Cases ***
TC1
    Log To Console    hello${SPACE}${SPACE}world
    ${val}      Set Variable      anupriya
    ${val}     Convert To Upper Case        ${val}
    Should Be Equal    ${val}    ANUPRIYA