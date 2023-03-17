*** Settings ***
Resource    common.resource
Resource    pages/search_page.resource


*** Keywords ***
Pesquisar Termo
    [Arguments]    ${search_term}
    IF    '${DEVICE_TYPE}' == 'mobile'
        Click    ${SEARCH.MENU_HAMBURGUER}
    ELSE
        Click    ${SEARCH.SEARCH_OPEN}
    END
    Fill In Search Field    ${search_term}
    Search Submit

Validar Resultado Da Pesquisa
    [Arguments]    ${search_term}
    Wait For Condition    Text    //h1   contains    ${search_term}
    Get Element Count    article    >=    1
