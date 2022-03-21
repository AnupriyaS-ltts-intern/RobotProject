*** Settings ***
Library     AppiumLibrary

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
    ...     name=khan academy

    Sleep    2s


    Close Application