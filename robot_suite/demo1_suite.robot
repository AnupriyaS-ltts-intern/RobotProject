*** Test Cases ***
TC1 Print My Name
    Log To Console    Anupriya S
    Log To Console    Hello Everyone

TC2
    Log To Console    Anu
    Log    Hello

TC3
    ${session_name}     Set Variable     Robot Session
    Log To Console    ${session_name}
    Log To Console    Session name is ${session_name}

#in TC4, store 25 and 26 in ${var1} and ${var2}
TC4
    ${var1}     Set Variable     25
    Log To Console    ${var1}
    ${var2}     Set Variable     26
    Log To Console    ${var2}
    ${result}     Evaluate    ${var1}+${var2}
    Log To Console    ${result}

TC5
    ${radius}     Set Variable     10
# calculate area of circle and print
    ${result}     Evaluate     3.14*${radius}*${radius}
    Log To Console     ${result}



