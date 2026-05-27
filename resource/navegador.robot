***settings ***
Resource    ../resource/main.robot
Library    OperatingSystem
Library    String

*** keywords ***
Abrir Navegador
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()  sys
    ${prefs}=    Create Dictionary
    ...     credentials_enable_service=${False}
    ...     profile.password_manager_enabled=${False}
    ...     profile.password_manager_leak_detection=${False}
    Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chrome_options}    add_argument    --disable-notifications
    Create Webdriver    Chrome    options=${chrome_options}
    Go To    ${URL}
    Maximize Browser Window

Capturar screenshot com timestamp
    ${date}=    Evaluate    __import__('datetime').datetime.now().strftime('%Y-%m-%d')
    ${clean_name}=    Replace String    ${TEST NAME}    :    -
    ${clean_name}=    Replace String    ${clean_name}    /    -
    ${clean_name}=    Replace String    ${clean_name}    \\    -
    ${clean_name}=    Replace String    ${clean_name}    ?    -
    ${clean_name}=    Replace String    ${clean_name}    *    -
    ${clean_name}=    Replace String    ${clean_name}    "    -
    ${clean_name}=    Replace String    ${clean_name}    <    -
    ${clean_name}=    Replace String    ${clean_name}    >    -
    ${clean_name}=    Replace String    ${clean_name}    |    -
    Create Directory    ${SCREENSHOT_DIR}
    ${screenshot_path}=    Set Variable    ${SCREENSHOT_DIR}/${clean_name}_${date}.png
    Capture Page Screenshot    ${screenshot_path}
    Log    Screenshot saved: ${screenshot_path}

Fechar Navegador
    Capturar screenshot com timestamp
    Close Browser