*** Settings ***
Resource    PageObjects/Page_CreateAnAccount.robot

*** Keywords ***
And preencher Create Account
    Preencher Campo Email Create An Account

And clicar no botão Create Account
    Clicar Botao Create an account

And preencher formulário Personal information
    Clicar Botao Title Mr
    Preencher Formulario Personal Information
    Selecionar Data de Nascimento
    Clicar Checkbox Newsletter

And Clicar no botão Register
    Clicar Register

Then a criação de conta é realizada com sucesso
    Validar Criacao da Conta