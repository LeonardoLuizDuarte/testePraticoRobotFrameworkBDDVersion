*** Variables ***
${CompraNoSite_BTN_PRINTEDSUMMERDRESS}                //*[@id="center_column"]/ul/li[3]/div/div[2]/h5/a[contains(.,'Printed Summer Dress')]
${CompraNoSite_SELECTOR_SIZE}                         //*[@id="uniform-group_1"]
${CompraNoSite_FIELD_QUANTITY}                        //*[@id="quantity_wanted_p"]
${CompraNoSite_BTN_ADDTOCART}                         //*[@id="add_to_cart"]/button
${CompraNoSite_BTN_PROCESSEDTOCHECKOUT}               //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
${CompraNoSiteCartSummary_BTN_PROCEEDTOCHECKOUT}      //*[@id="center_column"]/p[2]/a[1]
${CompraNoSiteAddress_SELECTOR_DELIVERYADDRESS}       //*[@id="id_address_delivery"]
${CompraNoSiteAddress_CHECKBOX_ADDRESSEQUAL}          //*[@id="addressesAreEquals"]
${CompraNoSiteAddress_SELECTOR_BILLINGADDRESS}        //*[@id="id_address_invoice"]
${CompraNoSiteAddress_FIELD_ORDERMESSAGE}             //*[@id="ordermsg"]/textarea
${CompraNoSiteAddress_BTN_PROCEEDTOCHECKOUT}          //*[@id="center_column"]/form/p/button         
${CompraNoSiteShipping_CHECKBOX_AGREE}                //*[@id="uniform-cgv"]
${CompraNoSiteShipping_BTN_PROCEEDTOCHECKOUT}         //*[@id="form"]/p/button
${CompraNoSitePayment_BTN_PAYBYBANKWIRE}              //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a   
${CompraNoSitePayment_BTN_PAYBYCHECK}                 //*[@id="HOOK_PAYMENT"]/div[2]/div/p/a
${CompraNoSitePayment_BTN_CONFIRMORDER}               //*[@id="cart_navigation"]/button
${CompraNoSite_CARD_ORDERCONFIRMATION}                //*[@id="center_column"]/p[1]

${CompraNoSite_SELECTOR_SELECT_SIZE_S}                //*[@id="group_1"]/option[1]
${CompraNoSite_SELECTOR_SELECT_SIZE_M}                //*[@id="group_1"]/option[2]
${CompraNoSite_SELECTOR_SELECT_SIZE_L}                //*[@id="group_1"]/option[3]

*** Keywords ***
Clicar na Opcao de compra Printed Summer Dress
    Wait Until Element Is Visible    ${CompraNoSite_BTN_PRINTEDSUMMERDRESS}    10
    Click Element                    ${CompraNoSite_BTN_PRINTEDSUMMERDRESS}

Selecionar Tamanho do Vestido
    Click Element                    ${CompraNoSite_SELECTOR_SIZE}
    Click Element                    ${CompraNoSite_SELECTOR_SELECT_SIZE_M}

Clicar Adicionar Quantidade
    Wait Until Element Is Visible    ${CompraNoSite_FIELD_QUANTITY}    10
    Clear Element Text               ${CompraNoSite_FIELD_QUANTITY}
    Input Text                       ${CompraNoSite_FIELD_QUANTITY}    2

Clicar em Adicionar no Carrinho
    Wait Until Element Is Visible    ${CompraNoSite_BTN_ADDTOCART}    10
    Click Button                     ${CompraNoSite_BTN_ADDTOCART}

Clicar em Prosseguir Para o Checkout
    Wait Until Element Is Visible    ${CompraNoSite_BTN_PROCESSEDTOCHECKOUT}    10
    Click Element                    ${CompraNoSite_BTN_PROCESSEDTOCHECKOUT}

Clicar em Prosseguir Para o Checkout na Tela de Summary
    Wait Until Page Contains Element    ${CompraNoSiteCartSummary_BTN_PROCEEDTOCHECKOUT}    10
    Click Element                       ${CompraNoSiteCartSummary_BTN_PROCEEDTOCHECKOUT}

Preencher Comentario na Tela de Address
    Wait Until Element Is Visible    ${CompraNoSiteAddress_FIELD_ORDERMESSAGE}    10
    Input Text                       ${CompraNoSiteAddress_FIELD_ORDERMESSAGE}    Comentario Teste

Clicar em Prosseguir Para o Checkout na Tela de Address
    Wait Until Element Is Visible    ${CompraNoSiteAddress_BTN_PROCEEDTOCHECKOUT}    10
    Click Element                    ${CompraNoSiteAddress_BTN_PROCEEDTOCHECKOUT}

Clicar na Checkbox de termos de servicos na Tela de Shipping
    Wait Until Element Is Visible    ${CompraNoSiteShipping_CHECKBOX_AGREE}    10
    Click Element                    ${CompraNoSiteShipping_CHECKBOX_AGREE}

Clicar em Prosseguir Para o Checkout na Tela de Shipping
    Wait Until Element Is Visible    ${CompraNoSiteShipping_BTN_PROCEEDTOCHECKOUT}   10
    Click Element                    ${CompraNoSiteShipping_BTN_PROCEEDTOCHECKOUT}

Clicar em Pay by bank wire na tela de Payment
    Wait Until Element Is Visible    ${CompraNoSitePayment_BTN_PAYBYBANKWIRE}    10
    Click Element                    ${CompraNoSitePayment_BTN_PAYBYBANKWIRE}

Clicar em Pay by check na tela de Payment
    Wait Until Element Is Visible    ${CompraNoSitePayment_BTN_PAYBYCHECK}   10
    Click Element                    ${CompraNoSitePayment_BTN_PAYBYCHECK}

Clicar em Confirm Order na tela de Payment
    Scroll Element Into View            ${CompraNoSitePayment_BTN_CONFIRMORDER}
    Wait Until Element Is Enabled       ${CompraNoSitePayment_BTN_CONFIRMORDER}
    Wait Until Page Contains Element    ${CompraNoSitePayment_BTN_CONFIRMORDER}    10
    Click Element                       ${CompraNoSitePayment_BTN_CONFIRMORDER}

Validar Compra com sucesso
    Wait Until Element Is Visible    ${CompraNoSite_CARD_ORDERCONFIRMATION}    10
    Element Text Should Be           ${CompraNoSite_CARD_ORDERCONFIRMATION}    Your order on My Shop is complete.


    

    