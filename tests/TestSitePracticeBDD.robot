***Settings***
library      SeleniumLibrary


***Variables***
${URL}       http://automationpractice.com/index.php
${Browser}   chrome


***Test Case***
Cenario de teste 01: Pesquisar produto existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na pagina de resultado da busca

Cenario de teste 02: Pesquisar produto não existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "sapato"
    Então a pagina deve exibir a mensagem "No results were for your search "sapato"


