***Settings***
Resource                ../resource/Resource.robot
Test Setup             Abrir Navegador
Test Teardown          Fechar Navegador


***Test Case***
Caso de teste 01: Pesquisar produto existente
    Acessar a pagina home do site
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de teste 02: Pesquisar produto não existente
    Acessar a pagina home do site
    Digitar o nome do produto "sapato" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem de erro "No results were found for your search "sapato""



