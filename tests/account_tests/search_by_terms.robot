*** Settings ***
Resource            ../../resources/common.resource

Suite Setup         Setup Test Environment
Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment


*** Test Cases ***
Pesquisar Termo
    Pesquisar Termo    Batata
    Validar Resultado Da Pesquisa    Batata
