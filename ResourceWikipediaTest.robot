*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}              https://pt.wikipedia.org/wiki/Wikip%C3%A9dia:P%C3%A1gina_principal
${BROWSER}          chrome
${INPUT_SEARCH}     name=search
${BUTTON_SEARCH}    id=p-search
${WIDTH}            1024
${HEIGHT}           1366

*** Keywords ***
Acessar a página
    Open Browser    url=${URL}      browser=${BROWSER}
    Set Window Size     width=${WIDTH}      height=${HEIGHT} 
    Title Should Be     Wikipédia, a enciclopédia livre 

Pesquisar por "${VALUE_SEARCH}"
    Input Text      ${INPUT_SEARCH}     ${VALUE_SEARCH}                
    Press keys      None        ENTER 

Conferir Resultado por "${VALUE_SEARCH}"
    Wait Until Page Contains    ${VALUE_SEARCH}


