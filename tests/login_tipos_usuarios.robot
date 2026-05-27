***Settings***
Resource    ../resource/main.robot

Test Setup     Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário 1: Login com usuario padrao
    Fazer login com usuario padrao
    Validar acesso ao sistema

Cenário 2: Login com usuario bloqueado
    Fazer login com usuario bloqueado

Cenário 3: Login com usuario problem
    Fazer login com usuario problem
    Validar acesso ao sistema

Cenário 4: Login com usuario performance
    Fazer login com usuario performance
    Validar acesso ao sistema

Cenário 5: Login com usuario error
    Fazer login com usuario error
    Validar acesso ao sistema

Cenário 6: Login com usuario visual
    Fazer login com usuario visual
    Validar acesso ao sistema
