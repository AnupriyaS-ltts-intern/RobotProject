*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory    E:${/}Temp${/}My_Folder
    Create File    E:${/}Temp${/}My_Folder${/}notes.txt     Anupriya S
    Copy File    E:${/}Temp${/}My_Folder${/}notes.txt    E:${/}Temp${/}notes_copy.txt
    Sleep    5s
    Remove File    E:${/}Temp${/}My_Folder${/}notes.txt
    Remove Directory    E:${/}Temp${/}My_Folder     True

TC3
    Create Directory    ${EXECDIR}{/}my_folder
    Create File    ${EXECDIR}{/}my_folder${/}notes.txt     Anupriya S
    File Should Exist     ${EXECDIR}{/}my_folder${/}notes.txt
    File Should Exist     ${EXECDIR}{/}my_folder${/}notes1.txt

TC4
    Create Directory     D:${/}ROBOT${/}Robot_Project${/}anu_folder




