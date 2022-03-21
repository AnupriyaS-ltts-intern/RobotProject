*** Settings ***
Library     AppiumLibrary

Test Teardown       Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=anupriyas_WVpBtl
    ...     browserstack.key=yCZbbsxYqzodMsqBppGA
    ...     app=bs://e0e3c7351ad185c9e4e15094534338260bbd8a62
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=Car Info Test

    Sleep    4s
    ${src}   Get Source
    Log To Console     ${src}