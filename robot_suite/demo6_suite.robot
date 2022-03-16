*** Settings ***
Library    OperatingSystem
*** Variables ***
&{PERSONAL_DETAILS}     firstname=Anupriya     lastname=S

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAILS}
    Log To Console    ${PERSONAL_DETAILS}{firstname}
    Log To Console    ${PERSONAL_DETAILS}{lastname}

TC2
    &{emp_dic}     Create Directory     empname=Anupriya
    Log To Console    ${emp_dic}
    Log To Console    ${emp_dic}{empname}




