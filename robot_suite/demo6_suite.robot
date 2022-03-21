*** Variables ***
&{PERSONAL_DETAIL}      firstname=Anupriya       lastname=S      mobile=94959495

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAIL}
    Log To Console    ${PERSONAL_DETAIL}[firstname]
    Log To Console    ${PERSONAL_DETAIL}[lastname]

TC2
    Log To Console    ${PERSONAL_DETAIL}
    Log To Console    ${PERSONAL_DETAIL}[firstname]
    Log To Console    ${PERSONAL_DETAIL}[lastname]

TC3
    &{emp_dic}      Create Dictionary   empname=Anupriya    companyname=XXX
    Log To Console    ${emp_dic}
    Log To Console    ${emp_dic}[empname]
    Log To Console    hello




