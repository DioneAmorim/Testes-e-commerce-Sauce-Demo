*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Dado que estou na pagina de login
      GO TO     ${URL}

Quando eu preencher o campo de Usuario e senha
    Input Text     ${LOGIN_USER_INPUT}    ${User}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Então devo acessar o sistema com sucesso
    Wait Until element Is Visible    ${INVENTORY_LIST}

Quando eu abro o menu lateral
    Wait Until Element Is Visible    ${MENU_BUTTON}
    Execute Javascript    document.getElementById('react-burger-menu-btn').click()
    Wait Until Element Is Visible    ${LOGOUT_LINK}

Eu abro o menu lateral
    Wait Until Element Is Visible    ${MENU_BUTTON}
    Execute Javascript    document.getElementById('react-burger-menu-btn').click()
    Wait Until Element Is Visible    ${LOGOUT_LINK}

Quando eu faço logout
    Click Element    ${LOGOUT_LINK}

Eu faço logout
    Click Element    ${LOGOUT_LINK}

Então devo ver a pagina de login
    Wait Until Element Is Visible    ${LOGIN_BTN}
    Element Should Be Visible    ${LOGIN_USER_INPUT}

# === KEYWORDS BDD PARA DIFERENTES TIPOS DE USUÁRIOS ===

Dado que estou na pagina de login como usuario padrao
    GO TO     ${URL}

Quando eu faço login com usuario padrao
    Input Text     ${LOGIN_USER_INPUT}    ${User}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Dado que estou na pagina de login como usuario bloqueado
    GO TO     ${URL}

Quando eu faço login com usuario bloqueado
    Input Text     ${LOGIN_USER_INPUT}    ${LOCKED_OUT_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Então devo ver a mensagem de erro de usuario bloqueado
    Wait Until element Is Visible    ${ERROR_MESSAGE}
    Element Should Contain    ${ERROR_MESSAGE}    locked out

Dado que estou na pagina de login como usuario problem
    GO TO     ${URL}

Quando eu faço login com usuario problem
    Input Text     ${LOGIN_USER_INPUT}    ${PROBLEM_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Dado que estou na pagina de login como usuario performance
    GO TO     ${URL}

Quando eu faço login com usuario performance
    Input Text     ${LOGIN_USER_INPUT}    ${PERFORMANCE_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Dado que estou na pagina de login como usuario visual
    GO TO     ${URL}

Quando eu faço login com usuario visual
    Input Text     ${LOGIN_USER_INPUT}    ${VISUAL_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}