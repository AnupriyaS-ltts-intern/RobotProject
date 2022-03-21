*** Settings ***
Library     AppiumLibrary

Test Teardown       Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=anupriyas_WVpBtl
    ...     browserstack.key=yCZbbsxYqzodMsqBppGA
    ...     app=bs://4fe8b9a263c1dac4a33cbdba5266ad74ac43fd58
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=khan academy Login

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']       timeout=50s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']      timeout=50s
    Click Element    xpath=//*[@content-desc='Settings']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'e-mail address')]       timeout=50s
    Input Text    xpath=//*[contains(@text,'e-mail address')]    anupriya@gmail.com

    Wait Until Page Contains Element    xpath=//*[@text='Password']        timeout=50s
    Input Text    xpath=//*[@text='Password']     anupriya123

    Sleep    2s
    Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]      timeout=50s
    Click Element    xpath=(//*[@text='Sign in'])[2]

    Sleep    2s
    Page Should Contain Text    There was an issue signing in
    Element Text Should Be    //*[contains(@text,'issue')]    There was an issue signing in
    Capture Page Screenshot