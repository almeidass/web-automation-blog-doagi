*** Settings ***
Resource    common.resource
Resource    pages/search_page.resource


*** Keywords ***
Pesquisar Artigo
    [Arguments]    ${search_term}
    IF    '${DEVICE_TYPE}' == 'mobile'
        Click    ${SEARCH.MENU_HAMBURGUER}
    ELSE
        Click    ${SEARCH.SEARCH_OPEN}
    END
    Fill In Search Field    ${search_term}
    Search Submit

Validar Resultado De Pesquisa Valida
    [Arguments]    ${search_term}
    Wait For Condition    Text    //h1   contains    ${search_term}
    Get Element Count    article    >=    1

Validar Resultado De Pesquisa Invalida
    [Arguments]    ${search_term}
    Wait For Condition    Text    //h1   contains    Nenhum resultado
    Get Element Count    article    ==    0

Pesquisar Por Artigo Valido
    [Arguments]    ${search_term}
    Pesquisar Artigo    ${search_term}
    Validar Resultado De Pesquisa Valida    ${search_term}

Pesquisar Por Artigo Invalido
    [Arguments]    ${search_term}
    Pesquisar Artigo    ${search_term}
    Validar Resultado De Pesquisa Invalida    ${search_term}
