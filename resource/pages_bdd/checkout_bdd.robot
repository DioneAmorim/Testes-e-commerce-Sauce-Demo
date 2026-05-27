*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Dado que estou na página meu carrinho
    Dado que estou na página inicial
    Quando eu selecionar um produto 
    Click Element                    ${CARRINHO_COMPRAS}
    Wait Until Element Is Visible    ${BTN_CHECKOUT}
    Capture Page Screenshot

Quando eu clico em checkout
    Click Element                    ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${INPUT_FIRST_NAME}
    Capture Page Screenshot

E preencho as minhas informações
    # Usando as variáveis que você configurou no variable.robot
    Input Text                       ${INPUT_FIRST_NAME}      ${NOME_COMPRADOR}
    Input Text                       ${INPUT_LAST_NAME}       ${SOBRENOME_COMPRADOR}
    Input Text                       ${INPUT_POSTAL_CODE}     ${CEP_COMPRADOR}
    
    # Tira o print com os campos preenchidos ANTES de clicar em continuar
    Capture Page Screenshot
    Click Button                     ${BTN_CONTINUE}

E valido os dados e informações da compra
    Wait Until Element Is Visible    ${PAYMENT_INFO}
    # Tira o print do resumo da compra antes de finalizar
    Capture Page Screenshot
    Click Button                     ${BTN_FINISH}

Então devo conseguir finalizar a compra com sucesso
    Wait Until Element Is Visible    ${TITLE_COMPLETE}
    Element Should Contain           ${TITLE_COMPLETE}        Thank you for your order!
    # Tira o print da tela de sucesso (Thank you for your order!)
    Capture Page Screenshot