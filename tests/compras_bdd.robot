***Settings***
Resource    ../resource/main.robot

Test Setup     Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário 1 - Validar fluixo de login 
    Dado que estou na pagina de login
    Quando eu preencher o campo de Usuario e senha
    Então devo acessar o sistema com sucesso

Cenário 2 - Adicionar produto ao carrinho
    Dado que estou na página inicial
    Quando eu selecionar um produto
    Então o carrinho deve conter o produto

Cenário 3 - Finalizar compra
    Dado que estou na página meu carrinho
    Quando eu clico em checkout
    E preencho as minhas informações
    E valido os dados e informações da compra
    Então devo conseguir finalizar a compra com sucesso

Cenário 4 - Remover item do carrinho
    Dado que estou na página inicial
    Quando eu selecionar um produto
    Quando eu ir para o meu carrinho
    Quando eu removo o item do carrinho
    Então o carrinho deve estar vazio

Cenário 5 - Ordenar produtos por preco
    Dado que estou na página inicial
    Quando eu ordeno os produtos por "Price (low to high)"
    Então o primeiro produto deve ter o preco "$7.99"

Cenário 6 - Navegacao entre paginas
    Dado que estou na página inicial
    Quando eu selecionar um produto
    Quando eu ir para o meu carrinho
    Quando eu volto para a página de produtos
    Então devo ver a lista de produtos

Cenário 7 - Logout
    Dado que estou na pagina de login
    Quando eu preencher o campo de Usuario e senha
    Quando eu abro o menu lateral
    Quando eu faço logout
    Então devo ver a pagina de login