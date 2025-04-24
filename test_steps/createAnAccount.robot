*** Settings ***
Resource            ../resource/BDD_Keywords_CreateAnAccount.robot
Resource            ../resource/BDD_Keywords.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Variables ***
${DIA}    17
${MES}    5
${ANO}    2003

*** Test Cases ***
Criar Conta com sucesso
    Given que esteja no site de compras
    When clicar no botão Sign In na tela de Home
    And preencher Create Account
    And clicar no botão Create Account
    And preencher formulário Personal information
    And Clicar no botão Register
    Then a criação de conta é realizada com sucesso