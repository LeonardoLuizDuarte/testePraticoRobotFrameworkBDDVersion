*** Variables ***
${HOME_BTN_SIGNIN}     //a[@class="login"]
${HOME_BTN_WOMEN}      //*[@id="block_top_menu"]/ul/li[1]/a
${HOME_BTN_DRESSES}    //*[@id="block_top_menu"]/ul/li[2]/a 
${HOME_BTN_TSHIRTS}    //*[@id="block_top_menu"]/ul/li[3]/a
${HOME_BTN_CART}       //*[@id="header"]/div[3]/div/div/div[3]/div/a


*** Keywords ***
Clicar Botao SignIn
    Wait Until Element Is Visible    ${HOME_BTN_SIGNIN}    10
    Click Element                    ${HOME_BTN_SIGNIN}

Clicar Botao Women
    Click Element    ${HOME_BTN_WOMEN}

Clicar Botao Dresses
    Wait Until Element Is Visible    ${HOME_BTN_DRESSES}  
    Click Element                    ${HOME_BTN_DRESSES}

Clicar Botao TShirts
    Click Element    ${HOME_BTN_TSHIRTS}

Clicar Botao Cart
    Click Element    ${HOME_BTN_CART}