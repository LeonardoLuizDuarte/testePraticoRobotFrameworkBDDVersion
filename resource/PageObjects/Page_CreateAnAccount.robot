*** Variables ***
${CreateAccount_FIELD_EMAIL}                                       //*[@id="email_create"]
${CreateAccount_BTN_CREATEANACCOUNT}                               //*[@id="SubmitCreate"]
${CreateAccount_PERSONALINFORMATION_RADIOBTN_GENDER1}              //*[@id="id_gender1"]            
${CreateAccountPersonalInformation__RADIOBTN_GENDER2}              //*[@id="id_gender2"]
${CreateAccountPersonalInformation_FIELD_FIRSTNAME}                //*[@id="customer_firstname"]
${CreateAccountPersonalInformation_FIELD_LASTNAME}                 //*[@id="customer_lastname"]
${CreateAccountPersonalInformation_FIELD_EMAIL}                    //*[@id="email"]
${CreateAccountPersonalInformation_FIELD_PASSWORD}                 //*[@id="passwd"]
${CreateAccountPersonalInformation_DROPDOWN_DAY}                   //*[@id="days"]
${CreateAccountPersonalInformation_DROPDOWN_MONTH}                 //*[@id="months"]
${CreateAccountPersonalInformation_DROPDOWN_YEAR}                  //*[@id="years"]
${CreateAccountPersonalInformation_CHECKBOX_NEWSLETTER}            //*[@id="newsletter"]
${CreateAccountPersonalInformation_BTN_REGISTER}                   //*[@id="submitAccount"]
${CreateAccount_CARD_REGISTERSUCESS}                               //p[@class="alert alert-success"]

${CreateAccountPersonalInformation_DROPDOWN_SELECT_DAY}           //*[@id="days"]//option[@value="${DIA}"]
${CreateAccountPersonalInformation_DROPDOWN_SELECT_MONTH}         //*[@id="months"]//option[@value="${MES}"]
${CreateAccountPersonalInformation_DROPDOWN_SELECT_YEAR}          //*[@id="years"]//option[@value="${ANO}"]

${PASSWORD}        123456

*** Keywords ***
Preencher Campo Email Create An Account
    ${EMAIL}    FakerLibrary.Email

    Input Text    ${CreateAccount_FIELD_EMAIL}    ${EMAIL}

Clicar Botao Create an account
    Click Element    ${CreateAccount_BTN_CREATEANACCOUNT}

Clicar Botao Title Mr
    Wait Until Element Is Visible    ${CreateAccount_PERSONALINFORMATION_RADIOBTN_GENDER1}    10
    Click Element                    ${CreateAccount_PERSONALINFORMATION_RADIOBTN_GENDER1}

Clicar Botao Title Mrs
    Wait Until Element Is Visible    ${CreateAccount_PERSONALINFORMATION_RADIOBTN_GENDER2}    10
    Click Element                    ${CreateAccount_PERSONALINFORMATION_RADIOBTN_GENDER2}

Preencher Formulario Personal Information
    ${PRIMEIRONOME}    FakerLibrary.Name
    ${ULTIMONOME}      FakerLibrary.Name

    Input Text       ${CreateAccountPersonalInformation_FIELD_FIRSTNAME}    ${PRIMEIRONOME}
    Input Text       ${CreateAccountPersonalInformation_FIELD_LASTNAME}     ${ULTIMONOME}      
    Input Text       ${CreateAccountPersonalInformation_FIELD_PASSWORD}     ${PASSWORD}

Selecionar Data de Nascimento
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_DAY}
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_SELECT_DAY}
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_MONTH}
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_SELECT_MONTH}
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_YEAR}
    Click Element    ${CreateAccountPersonalInformation_DROPDOWN_SELECT_YEAR}

Clicar Checkbox Newsletter
    Click Element    ${CreateAccountPersonalInformation_CHECKBOX_NEWSLETTER}

Clicar Register
    Click Element    ${CreateAccountPersonalInformation_BTN_REGISTER}

Validar Criacao da Conta
    Element Text Should Be    ${CreateAccount_CARD_REGISTERSUCESS}    Your account has been created.    
    