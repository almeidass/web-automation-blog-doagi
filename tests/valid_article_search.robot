*** Settings ***
Resource            ../resources/common.resource

Suite Setup         Setup Test Environment
Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment
Test Template       Pesquisar Por Artigo Valido


*** Test Cases ***    ARTIGO
Pesquisa Pelo Título Do Artigo    Semana do consumidor
Pesquisa Parcial Pelo Título Do Artigo    Semana do
Pesquisa Por Palavra Chave    Consumidor
