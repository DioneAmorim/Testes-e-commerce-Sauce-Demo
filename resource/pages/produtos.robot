*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***


Selecionar um produto
    Element Should Be Visible      ${ADD_TO_CART}
    Click Element                  ${ADD_TO_CART}
    Wait Until Element Is Visible  ${CARRINHO_ITEN}       10s 
    Wait Until Element Is Visible  ${CARRINHO_COMPRAS}    10s

Validar o produto no carrinho
    Element Should Contain         ${CARRINHO_ITEN}       1
    Element Should Be Visible      ${CARRINHO_COMPRAS}    

Selecionar dois produtos
    Element Should Be Visible        ${ADD_TO_CART}
    Click Element                    ${ADD_TO_CART}
    Element Should Be Visible        ${ADD_TO_CART_PRODUTO_2}
    Click Element                    ${ADD_TO_CART_PRODUTO_2}
    Wait Until Element Is Visible   ${CARRINHO_ITEN}      10s

Validar que o carrinho contém dois produtos
    Element Should Contain           ${CARRINHO_ITEN}       2
    Element Should Be Visible        ${CARRINHO_COMPRAS}

Ir para o carrinho
    Click Element                    ${CARRINHO_COMPRAS}
    Wait Until Element Is Visible    ${BTN_CHECKOUT}

Ordenar produtos por
    [Arguments]    ${opcao}
    Select From List By Label    ${PRODUCT_SORT_CONTAINER}    ${opcao}
    Sleep    1s

Voltar para a pagina de produtos
    Click Button    ${BTN_CONTINUE_SHOPPING}
    Wait Until Element Is Visible    ${INVENTORY_LIST}

Validar primeiro produto com preco
    [Arguments]    ${preco}
    Element Text Should Be    ${FIRST_PRODUCT_PRICE}    ${preco}

Validar primeiro produto com nome
    [Arguments]    ${nome}
    Element Text Should Be    ${FIRST_PRODUCT_NAME}    ${nome}

Remover o item do carrinho
    Click Button    ${REMOVE_BACKPACK}
    # Espera até o item do carrinho desaparecer
    Wait Until Page Does Not Contain Element    ${CART_ITEM}

Validar carrinho vazio
    Page Should Not Contain Element    ${CART_ITEM}

Voltar para a pagina de produtos
    Click Button    ${BTN_CONTINUE}
    Wait Until Element Is Visible    ${INVENTORY_LIST}

Validar estou na pagina de produtos
    Wait Until Element Is Visible    ${INVENTORY_LIST}
