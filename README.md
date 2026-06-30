## Plano de Testes & Análise Analítica (Sauce Demo)

### 📋 Estratégia e Casos de Teste Executados
Os testes foram estruturados para cobrir o fluxo fim a fim (E2E) da aplicação, garantindo todas as regras de negócio solicitadas:
* **Cenário 1 - Validar fluxo de login:** Autenticação com sucesso na plataforma.
* **Cenário 2 - Adicionar produto ao carrinho:** Inclusão de itens e atualização do estado do carrinho.
* **Cenário 3 - Finalizar compra:** Fluxo completo de checkout, validação de dados e tela de sucesso.
* **Cenário 4 - Remover item do carrinho:** Gestão e esvaziamento do carrinho de compras.
* **Cenário 5 - Ordenar produtos por preço:** Validação da regra de ordenação crescente (Low to High).
* **Cenário 6 - Navegação entre páginas:** Fluxo de ida e volta entre o carrinho e a vitrine sem perda de estado.
* **Cenário 7 - Logout:** Encerramento seguro da sessão do usuário.

---

### 🐛 Análise de Bugs Encontrados (Massa de Teste Simulada)
Durante as rodadas de testes com diferentes perfis de usuários, foram identificados os seguintes comportamentos:
* **Perfil `problem_user`:** Ocorre uma quebra de componentes visuais na vitrine, onde imagens específicas de produtos não são carregadas corretamente (retornando a mesma imagem padrão para todos os itens), além de falhas ao tentar remover itens do carrinho.
* **Perfil `locked_out_user`:** O sistema bloqueia o acesso corretamente, porém a mensagem de erro na tela de login carece de um código de suporte ou link de recuperação, impactando a experiência do usuário.

---

### Análise de Riscos
* **Dependência de Seletores Intermediários:** Risco de quebra das automações caso a estrutura do HTML ou as classes CSS sejam alteradas pela equipe de front-end sem aviso prévio. (Mitigação futura: sugerir a inclusão de tags `data-testid`).
* **Validação Inexistente no Checkout:** O campo de CEP/Zip Code aceita qualquer formato de caractere. Há o risco de envio de dados inválidos para o banco de dados de logística.

---

### 💡 Sugestões de Melhorias
* **Validação de CEP em Tempo Real:** Implementar uma API de validação no formulário de checkout para evitar dados corrompidos.
* **Testes de Contrato:** Implementar testes de contrato para garantir que o front-end do e-commerce não quebre caso a API de catálogo mude.
* **Integração Contínua (CI/CD):** Configurar o GitHub Actions para rodar essa suite de testes de interface automaticamente a cada novo Pull Request.

## Screenshots  (2026-05-27)

Os screenshots abaixo foram gerados na execução de todos os cenários em `tests/` no dia 2026-05-27:

![Screenshot 1](2026-05-27/selenium-screenshot-1.png)
![Screenshot 2](2026-05-27/selenium-screenshot-2.png)
![Screenshot 3](2026-05-27/selenium-screenshot-3.png)

![Screenshot 4](2026-05-27/selenium-screenshot-4.png)
![Screenshot 5](2026-05-27/selenium-screenshot-5.png)
![Screenshot 6](2026-05-27/selenium-screenshot-6.png)

![Screenshot 7](2026-05-27/selenium-screenshot-7.png)
![Screenshot 8](2026-05-27/selenium-screenshot-8.png)
![Screenshot 9](2026-05-27/selenium-screenshot-9.png)

