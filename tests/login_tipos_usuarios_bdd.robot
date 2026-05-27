***Settings***
Resource    ../resource/main.robot

Test Setup     Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário 1: Login com usuario padrao deve ter sucesso
    Dado que estou na pagina de login como usuario padrao
    Quando eu faço login com usuario padrao
    Então devo acessar o sistema com sucesso

Cenário 2: Login com usuario bloqueado deve exibir erro
    Dado que estou na pagina de login como usuario bloqueado
    Quando eu faço login com usuario bloqueado
    Então devo ver a mensagem de erro de usuario bloqueado

Cenário 3: Login com usuario problem deve ter sucesso
    Dado que estou na pagina de login como usuario problem
    Quando eu faço login com usuario problem
    Então devo acessar o sistema com sucesso

Cenário 4: Login com usuario performance deve ter sucesso
    Dado que estou na pagina de login como usuario performance
    Quando eu faço login com usuario performance
    Então devo acessar o sistema com sucesso

Cenário 5: Login com usuario visual deve ter sucesso
    Dado que estou na pagina de login como usuario visual
    Quando eu faço login com usuario visual
    Então devo acessar o sistema com sucesso
