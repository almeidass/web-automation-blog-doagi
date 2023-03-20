*** Settings ***
Resource            ../resources/common.resource

Suite Setup         Setup Test Environment
Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment
Test Template       Pesquisar Por Artigo Invalido


*** Test Cases ***    ARTIGO
Pesquisa Em Branco    ${EMPTY}
Pesquisa Com Caracteres Especiais    !@#$%&*
Pesquisa Com Apenas Números    1234567890
Pesquisa Por Um Artigo Inexistente    Batata Palha
Pesquisa Por Palavras Chaves    Parangaricotirimirruaro
