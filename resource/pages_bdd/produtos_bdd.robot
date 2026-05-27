*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Dado que estou na página inicial
    Dado que estou na pagina de login
    Quando eu preencher o campo de Usuario e senha

Quando eu selecionar um produto
    Element Should Be Visible      ${ADD_TO_CART}
    Click Element                  ${ADD_TO_CART}
    Wait Until Element Is Visible  ${CARRINHO_ITEN}       10s 
    Wait Until Element Is Visible  ${CARRINHO_COMPRAS}    10s

Então o carrinho deve conter o produto
    Element Should Contain         ${CARRINHO_ITEN}       1
    Element Should Be Visible      ${CARRINHO_COMPRAS}    

# === NOVAS KEYWORDS PARA 2 PRODUTOS ===

Quando eu selecionar dois produtos
    # Valida e clica no primeiro produto (Mochila)
    Element Should Be Visible        ${ADD_TO_CART}
    Click Element                    ${ADD_TO_CART}
    
    # Valida e clica no segundo produto (Luz de bicicleta)
    Element Should Be Visible        ${ADD_TO_CART_PRODUTO_2}
    Click Element                    ${ADD_TO_CART_PRODUTO_2}
    
    # Aguarda o ícone do carrinho atualizar
    Wait Until Element Is Visible    ${CARRINHO_ITEN}    10s

Então o carrinho deve conter dois produtos
    # Valida se o carrinho agora mostra o número 2
    Element Should Contain           ${CARRINHO_ITEN}       2
    Element Should Be Visible        ${CARRINHO_COMPRAS}

Quando eu ordeno os produtos por "${opcao}"
    Select From List By Label    ${PRODUCT_SORT_CONTAINER}    ${opcao}
    Sleep    1s

Então o primeiro produto deve ter o preco "${preco}"
    Element Text Should Be       ${FIRST_PRODUCT_PRICE}    ${preco}

Quando eu removo o item do carrinho
    Click Button    ${REMOVE_BACKPACK}
    Wait Until Page Does Not Contain Element    ${CART_ITEM}

Eu removo o item do carrinho
    Click Button    ${REMOVE_BACKPACK}
    Wait Until Page Does Not Contain Element    ${CART_ITEM}

Então o carrinho deve estar vazio
    Page Should Not Contain Element    ${CART_ITEM}

Quando eu ir para o meu carrinho
    Click Element    ${CARRINHO_COMPRAS}
    Wait Until Element Is Visible    ${BTN_CHECKOUT}

Eu ir para o meu carrinho
    Click Element    ${CARRINHO_COMPRAS}
    Wait Until Element Is Visible    ${BTN_CHECKOUT}

Quando eu volto para a página de produtos
    Click Button    ${BTN_CONTINUE_SHOPPING}
    Wait Until Element Is Visible    ${INVENTORY_LIST}

Eu volto para a página de produtos
    Click Button    ${BTN_CONTINUE_SHOPPING}
    Wait Until Element Is Visible    ${INVENTORY_LIST}

Então devo ver a lista de produtos
    Wait Until Element Is Visible    ${INVENTORY_LIST}