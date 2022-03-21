*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${MY_NAME}     Anupriya S
@{COLORS}     red     green     yellow     pink


*** Test Cases ***

TC5
    ${count}     Get Length     ${COLORS}


TC1
    Set Local Variable    ${name}     AnupriyaS
    Log To Console    ${name}

    ${val}     Set Variable     Anu
    Log To Console    ${name}

    Log To Console    ${MY_NAME}

TC2
    Log To Console    ${MY_NAME}

TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    ${count}     Get Length    ${COLORS}
    Log To Console    ${count}

TC4
    @{fruits}     Create List     apple     banana     mango     pineapple
    Log To Console    ${fruits}
    Log To Console    ${fruits}[2]

    Remove Values From List     ${fruits}     mango
    Log To Console    ${fruits}

    Append To List    ${fruits}     orange
    Log To Console    ${fruits}
    
    Insert Into List    ${fruits}    2    Jackfruit
    Log To Console    ${fruits}

    Log List     ${fruits}


