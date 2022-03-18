*** Variables ***
&{STUDENT_DETAIL}      studentId=1001       studentName=John      percentage=72.2     mailId=john@gmail.com

*** Test Cases ***
TC1
    &{STUDENT_DETAIL}      Create Dictionary     studentId=1001       studentName=John      percentage=72.2     mailId=john@gmail.com
    Log To Console    ${STUDENT_DETAIL}
    Log To Console    ${STUDENT_DETAIL}[studentId]