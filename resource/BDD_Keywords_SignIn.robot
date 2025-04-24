*** Settings ***
Resource    PageObjects/Page_SignIn.robot

*** Keywords ***
And realizar o Login com credenciais válidas
    Preencher Campo Email Create An Account Sign In
    Preencher Campo Password Create An Account Sign In

And clicar no Botão Sign In
    Clicar Botao Login Sign In

Then o login é realizado com sucesso
    Validar Login com sucesso