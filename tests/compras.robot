***Settings***
Resource    ../resource/main.robot

Test Setup     Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário 1: Validar fluixo de login 
    Acessar a pagina de login
    Preencher o usuario e senha
    Validar acesso ao sistema

Cenário 2: Adicionar produto ao carrinho
    Acessar a pagina de login
    Preencher o usuario e senha
    Selecionar um produto
    Validar o produto no carrinho

Cenário 3: Finalizar compra
    Acessar a pagina de login
    Preencher o usuario e senha
    Selecionar um produto
    Ir para o carrinho
    Clicar em checkout
    Preencher as informações do checkout
    Validar Resumo da compra
    Finalizar a compra

Cenário 4: Adicionar dois produtos ao carrinho
    Acessar a pagina de login
    Preencher o usuario e senha
    Selecionar dois produtos
    Validar que o carrinho contém dois produtos

Cenário 5: Remover item do carrinho
    Acessar a pagina de login
    Preencher o usuario e senha
    Selecionar um produto
    Ir para o carrinho
    Remover o item do carrinho
    Validar carrinho vazio

Cenário 6: Ordenar produtos por preco
    Acessar a pagina de login
    Preencher o usuario e senha
    Ordenar produtos por    Price (low to high)
    Validar primeiro produto com preco    $7.99

Cenário 7: Navegação entre páginas
    Acessar a pagina de login
    Preencher o usuario e senha
    Selecionar um produto
    Ir para o carrinho
    Voltar para a pagina de produtos
    Validar estou na pagina de produtos

Cenário 8: Logout
    Acessar a pagina de login
    Preencher o usuario e senha
    Abrir menu lateral
    Finalizar logout
    Validar logout com sucesso
