# Automação De Testes Web - Blog Do Agi

Este projeto é uma automação de testes Web básica do Blog do Agi, desenvolvida com Python, Robot Framework e Playwright.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

![Badge Done](http://img.shields.io/static/v1?label=status&message=Done&color=GREEN&style=fill)

![Badge Python Version](https://img.shields.io/static/v1?label=python&message=3.10.6&color=blue&style=fill)

![Badge Robot Framework](http://img.shields.io/static/v1?label=robot-framework&message=6.0.2&color=blue&style=fill)

![Badge Browser Playwright](http://img.shields.io/static/v1?label=robotframework-browser&message=16.0.2&color=blue&style=fill)

![Badge PyYAML](http://img.shields.io/static/v1?label=PyYAML&message=6.0&color=blue&style=fill)

## Lista de features para execução

| Feature                        | Tag            |
| ------------------------------ | -------------- |
| Pesquisa De Artigo Válido      | VALID_SEARCH   |
| Pesquisa De Artigo Inválido    | INVALID_SEARCH |

| Descrição                                  | Tag             |
| ------------------------------------------ | --------------- |
|   Executar todos os testes Regressivos     |   REGRESSIVE    |
|   Executar todos Smoke Testes              |   SMOKE         |

## Melhores práticas utilizadas

* [Click Aqui!](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst#test-suite-names)

## Configurando o ambiente:

- Faça o donwload do [Python 3.10.6](https://www.python.org/downloads/)
- Faça o donwload do [Node JS LTS](https://nodejs.org/en/download)

Após finalizar os downloads do Python e NodeJS, realize as instalações, caso tenha alguma dificuldade, pesquise no YouTube, como instalar {tecnologia} no {SO}, por exemplo, como instalar Python no Windows 10.

- Verifique se tudo está configurado corretamente:

Python
```
python --version
```
O resultado deve ser algo como:
```
Python 3.10.6
```

PIP
```
pip --version
```
O resultado deve ser algo como:
```
pip 23.0.1 from {PYTHON_HOME} (python 3.10)
```

Node JS
```
node --version
```
O resultado deve ser algo como:
```
v18.7.0
```

- Com o ambiente configurado, instale as dependências.

```
pip install -r requirements.txt
```

- Execute o comando abaixo para iniciar a biblioteca Browser (Playwright):

```
rfbrowser init
```

- Se preferir utilizar Ambientes virtuais em Python, que recomendamos fortemente, utilize o script setup_venv.sh

```
./setup_venv.sh
```

## Executando os testes

Para realizar a execução dos testes, utilize o comando:

```
robot -d results test/nome_arquivo.robot
```

Onde:
* robot - é o nome que se refere ao robotframework para inicio das execuções.
* -d results - indica o local onde serão armazenados os relatórios e evidências.
* test/nome_arquivo.robot - Indica o arquivo de testes que será utilizado.

Para realizar a execução dos testes utilizando as tags:

```
robot -d results -i TAG_NAME test
```

Para realizar a execução dos testes excluindo uma tag:

```
robot -d results -e TAG_NAME test
```

## Author

* almeidass (Leonardo Almeida)
