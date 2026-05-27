*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***

Clicar em checkout
    Click Element                    ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${INPUT_FIRST_NAME}
    Capture Page Screenshot

Preencher as informações do checkout
    # Usando as variáveis que você configurou no variable.robot
    Input Text                       ${INPUT_FIRST_NAME}      ${NOME_COMPRADOR}
    Input Text                       ${INPUT_LAST_NAME}       ${SOBRENOME_COMPRADOR}
    Input Text                       ${INPUT_POSTAL_CODE}     ${CEP_COMPRADOR}
    
    # Tira o print com os campos preenchidos ANTES de clicar em continuar
    Capture Page Screenshot
    Click Button                     ${BTN_CONTINUE}

Validar Resumo da compra
    Wait Until Element Is Visible    ${PAYMENT_INFO}
    # Tira o print do resumo da compra antes de finalizar
    Capture Page Screenshot
    Click Button                     ${BTN_FINISH}

Finalizar a compra
    Wait Until Element Is Visible    ${TITLE_COMPLETE}
    Element Should Contain           ${TITLE_COMPLETE}        Thank you for your order!
    # Tira o print da tela de sucesso (Thank you for your order!)
    Capture Page Screenshot  