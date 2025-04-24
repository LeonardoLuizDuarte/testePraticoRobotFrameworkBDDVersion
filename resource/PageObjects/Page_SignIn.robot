*** Variables ***
${SIGNIN_FIELD_EMAIL}           //*[@id="email"]       
${SIGNIN_FIELD_PASSWORD}        //*[@id="passwd"] 
${SIGNIN_BTN_FORGOTPASSWORD}    //a[@title="Recover your forgotten password"] 
${SIGNIN_BTN_SIGNIN}            //*[@id="SubmitLogin"]
${SIGNIN_CARD_MYACCOUNT}        //*[@id="center_column"]/h1

${EMAIL_SIGNIN}                 TestePraticoRobot@gmail.com
${PASSWORD_SIGNIN}              TestePraticoRobot

*** Keywords ***
Preencher Campo Email Create An Account Sign In
    Input Text    ${SIGNIN_FIELD_EMAIL}    ${EMAIL_SIGNIN}

Preencher Campo Password Create An Account Sign In
    Input Text    ${SIGNIN_FIELD_PASSWORD}    ${PASSWORD_SIGNIN}

Clicar Botao Login Sign In
    Click Element   ${SIGNIN_BTN_SIGNIN}

Validar Login com sucesso
    Wait Until Element Is Visible    ${SIGNIN_CARD_MYACCOUNT}    10
    Element Text Should Be           ${SIGNIN_CARD_MYACCOUNT}    MY ACCOUNT   