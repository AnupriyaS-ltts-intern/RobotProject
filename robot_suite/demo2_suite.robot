*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
    ${current_date}     Get Current Date
    Log To Console    ${current_date}
    Log    ${current_date}

TC2
TC1 Print My Name
    Log To Console    Anupriya