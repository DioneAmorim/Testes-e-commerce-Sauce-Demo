## 🧠 Plano de Testes & Análise Analítica (Sauce Demo)

### 📋 Estratégia e Casos de Teste Executados
Os testes foram estruturados para garantir a integridade das principais jornadas do usuário no e-commerce:
1. **CT01 - Fluxo de Autenticação:** Validação de login com múltiplos perfis (`standard_user`, `locked_out_user` e `problem_user`) e comportamento do sistema de segurança.
2. **CT02 - Gerenciamento de Produtos:** Teste das funções de ordenação de produtos (A-Z, Z-A, preço crescente e decrescente).
3. **CT03 - Gestão do Carrinho:** Inclusão e remoção de múltiplos itens no carrinho, validando o contador da interface.
4. **CT04 - Processo de Checkout:** Fluxo completo desde o preenchimento do formulário de entrega até a tela de sucesso da compra.

---

### 🐛 Análise de Bugs Encontrados (Massa de Teste Simulada)
Durante as rodadas de testes com diferentes perfis de usuários, foram identificados os seguintes comportamentos:
* **Perfil `problem_user`:** Ocorre uma quebra de componentes visuais na vitrine, onde imagens específicas de produtos não são carregadas corretamente (retornando a mesma imagem padrão para todos os itens), além de falhas ao tentar remover itens do carrinho.
* **Perfil `locked_out_user`:** O sistema bloqueia o acesso corretamente, porém a mensagem de erro na tela de login carece de um código de suporte ou link de recuperação, impactando a experiência do usuário.

---

### ⚠️ Análise de Riscos
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

