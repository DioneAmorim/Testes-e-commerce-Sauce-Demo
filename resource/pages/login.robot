*** Settings ***
Resource    ../../resource/main.robot

*** Keywords ***
Acessar a pagina de login
    GO TO    ${URL}

Preencher o usuario e senha
    Input Text     ${LOGIN_USER_INPUT}    ${User}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}

Validar acesso ao sistema
    Wait Until element Is Visible    ${INVENTORY_LIST}

Abrir menu lateral
    Wait Until Element Is Visible    ${MENU_BUTTON}
    Execute Javascript    document.getElementById('react-burger-menu-btn').click()
    Wait Until Element Is Visible    ${LOGOUT_LINK}

Finalizar logout
    Abrir menu lateral
    Click Element    ${LOGOUT_LINK}

Validar logout com sucesso
    Wait Until Element Is Visible    ${LOGIN_BTN}
    Element Should Be Visible    ${LOGIN_USER_INPUT}

# === KEYWORDS PARA DIFERENTES TIPOS DE USUÁRIOS ===

Fazer login com usuario padrao
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${User}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${INVENTORY_LIST}

Fazer login com usuario bloqueado
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${LOCKED_OUT_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${ERROR_MESSAGE}
    Element Should Contain    ${ERROR_MESSAGE}    locked out

Fazer login com usuario problem
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${PROBLEM_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${INVENTORY_LIST}

Fazer login com usuario performance
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${PERFORMANCE_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${INVENTORY_LIST}

Fazer login com usuario error
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${ERROR_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${INVENTORY_LIST}

Fazer login com usuario visual
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${VISUAL_USER}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${Password}
    Click Button    ${LOGIN_BTN}
    Wait Until element Is Visible    ${INVENTORY_LIST}

Fazer login com usuario customizado
    [Arguments]    ${username}    ${password}=${Password}
    Acessar a pagina de login
    Input Text     ${LOGIN_USER_INPUT}    ${username}
    Input Password     ${LOGIN_PASSWORD_INPUT}    ${password}
    Click Button    ${LOGIN_BTN}