*** Variables ***
${URL}            https://www.saucedemo.com/
${browser}        Chrome
${SCREENSHOT_DIR}   screenshots

# === USUÁRIOS PARA TESTES ===
${User}            standard_user
${LOCKED_OUT_USER}    locked_out_user
${PROBLEM_USER}       problem_user
${PERFORMANCE_USER}   performance_glitch_user
${ERROR_USER}         error_user
${VISUAL_USER}        visual_user
${Password}        secret_sauce

# === LOCADORES DE LOGIN ===
${LOGIN_USER_INPUT}    id=user-name
${LOGIN_PASSWORD_INPUT}  id=password
${LOGIN_BTN}       id=login-button
${ERROR_MESSAGE}   css=[data-test="error"]

${INVENTORY_LIST}   css=[data-test="inventory-item"]

${ADD_TO_CART}    id=add-to-cart-sauce-labs-backpack
${ADD_TO_CART_PRODUTO_2}   id=add-to-cart-sauce-labs-bike-light
${CARRINHO_ITEN}  css=[data-test="shopping-cart-badge"]
${CARRINHO_COMPRAS}     css=[data-test="shopping-cart-link"]
${MENU_BUTTON}          id=react-burger-menu-btn
${LOGOUT_LINK}          id=logout_sidebar_link
${PRODUCT_SORT_CONTAINER}    css=[data-test="product-sort-container"]
${FIRST_PRODUCT_NAME}        xpath=(//div[@class="inventory_item_name"])[1]
${FIRST_PRODUCT_PRICE}       xpath=(//div[@class="inventory_item_price"])[1]
${CART_ITEM}                css=.cart_item
${REMOVE_BACKPACK}           id=remove-sauce-labs-backpack
${REMOVE_BIKE_LIGHT}         id=remove-sauce-labs-bike-light
${BTN_CONTINUE_SHOPPING}     id=continue-shopping

# === LOCADORES DO CHECKOUT ===
${BTN_CHECKOUT}           id=checkout
${INPUT_FIRST_NAME}       id=first-name
${INPUT_LAST_NAME}        id=last-name
${INPUT_POSTAL_CODE}      id=postal-code
${BTN_CONTINUE}           id=continue
${BTN_FINISH}             id=finish
${TITLE_COMPLETE}         css=[data-test="complete-header"]
${PAYMENT_INFO}           css=[data-test="payment-info-label"]

# === DADOS Clientes ===

${NOME_COMPRADOR}         Dione
${SOBRENOME_COMPRADOR}    Amorim
${CEP_COMPRADOR}          00888-999

${NOME_COMPRADOR}         Lincon
${SOBRENOME_COMPRADOR}    Brabo
${CEP_COMPRADOR}          00999-777