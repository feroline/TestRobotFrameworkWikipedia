*** Settings ***
Resource    ResourceWikipediaTest.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar Algo
    Acessar a página
    Pesquisar por "Nebulosa"
    Conferir Resultado por "Nebulosa"
