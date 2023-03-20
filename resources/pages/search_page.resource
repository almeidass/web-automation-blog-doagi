*** Settings ***
Resource    ../common.resource


*** Variables ***
&{SEARCH}
...             MENU_HAMBURGUER=//button[@id='overlay-open']
...             SEARCH_OPEN=//button[@id='search-open']
...             SEARCH_FIELD=//input[@class='search-field']
...             SEARCH_SUBMIT=//input[@class='search-submit']

*** Keywords ***
Fill In Search Field
    [Arguments]    ${search_term}
    Type Text    //div[contains(@class, '${DEVICE_TYPE}-search')]${SEARCH.SEARCH_FIELD}    ${search_term}

Search Submit
    Keyboard Key    press    Enter
    