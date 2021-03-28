***Settings***
library      SeleniumLibrary


***Variables***
${Browser}   chrome
${URL}       http://automationpractice.com/index.php


***Keywords***
Abrir Navegador
    Open Browser    about:blank    ${Browser}

Fechar Navegador
    Close Browser

Acessar a pagina home do site
    Go To               ${URL} 
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    name=search_query   ${PRODUTO}

Clicar no botão pesquisar
    Click Element     name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible     xpath=//div[@id='center_column']
    Title Should Be                   Search - My Store
    Page Should Contain Image         xpath=//*[@id='center_column']//img[@title='Blouse']
    Page Should Contain Link          xpath=//*[@id='center_column']//a[@class='product-name'][contains(text(),"${PRODUTO}")]

Dado que estou na pagina home do site
    Go To               ${URL} 
    Title Should Be     My Store

Quando eu pesquisar pelo produto "${PRODUTO}"
    Input Text          name=search_query       ${PRODUTO}
    Click Element       name=submit_search

Então o produto "Blouse" deve ser listado na pagina de resultado da busca
    Wait Until Element Is Visible     xpath=//div[@id='center_column']
    Title Should Be                   Search - My Store
    Page Should Contain Image         xpath=//*[@id='center_column']//img[@title='Blouse']
    Page Should Contain Link          xpath=//*[@id='center_column']//a[@class='product-name'][contains(text(),"${PRODUTO}")]
    
Conferir mensagem de erro "${PRODUTO}"  
    Wait Until Element Is Visible     xpath=//div[@id='center_column']
    Title Should Be                   Search - My Store
    Wait Until Element Is Visible     xpath=//p[@class='alert alert-warning']
    Element Should Contain            xpath=//p[@class='alert alert-warning']       ${PRODUTO}

Então a pagina deve exibir a mensagem de erro "${PRODUTO}"  
    Wait Until Element Is Visible     xpath=//div[@id='center_column']
    Title Should Be                   Search - My Store
    Wait Until Element Is Visible     xpath=//p[@class='alert alert-warning']
    Element Should Contain            xpath=//p[@class='alert alert-warning']       ${PRODUTO}