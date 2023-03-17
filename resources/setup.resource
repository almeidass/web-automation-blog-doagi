*** Settings ***
Library         OperatingSystem
Resource        common.resource
Variables       config/config.yaml


*** Keywords ***
Set Execution Environment
    ${exec_env}=    Get Environment Variable    EXEC_ENV    default=${CONFIG}[DEFAULT][EXEC_ENV]
    Set Global Variable    ${EXEC_ENV}    ${exec_env}

Set Base URL
    ${base_url}=    Get Environment Variable    BASE_URL    default=${CONFIG}[${EXEC_ENV}][BASE_URL]
    Set Global Variable    ${BASE_URL}    ${base_url}

Set Speed
    ${speed}=    Get Environment Variable    SPEED    default=${CONFIG}[${EXEC_ENV}][SPEED]
    Set Global Variable    ${SPEED}    ${speed}

Set Timeout
    ${timeout}=    Get Environment Variable    TIMEOUT    default=${CONFIG}[${EXEC_ENV}][TIMEOUT]
    Set Global Variable    ${TIMEOUT}    ${timeout}

Set Headless
    ${headless}=    Get Environment Variable    HEADLESS    default=${CONFIG}[DEFAULT][HEADLESS]
    Set Global Variable    ${HEADLESS}    ${headless}

Set Browser
    ${browser}=    Get Environment Variable    BROWSER    default=${CONFIG}[${EXEC_ENV}][BROWSER]
    IF    ${HEADLESS}
        Set Global Variable    ${BROWSER}    headless${browser}
    ELSE
        Set Global Variable    ${BROWSER}    ${browser}
    END

Set Device
    ${device}=    Get Environment Variable    DEVICE    default=${CONFIG}[${EXEC_ENV}][DEVICE]
    Set Global Variable    ${DEVICE}    ${device}
    IF    'Desktop' in """${DEVICE}"""
        Set Global Variable    ${DEVICE_TYPE}    desktop
    ELSE
        Set Global Variable    ${DEVICE_TYPE}    mobile
    END

Setup Test Environment
    Set Execution Environment
    Set Base URL
    Set Speed
    Set Timeout
    Set Headless
    Set Browser
    Set Device

Setup Web Environment
    New Browser    ${BROWSER}    headless=${HEADLESS}
    ${device}=    Get Device    ${DEVICE}
    New Context    &{device}
    New Page    ${BASE_URL}

Teardown Web Environment
    Take Screenshot    EMBED
    # Capture Page Screenshot    EMBED
    # Close All Browsers
    