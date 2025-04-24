*** Settings ***
Resource            ../resource/BDD_Keywords_CompraNoSite.robot
Resource            ../resource/BDD_Keywords.robot
Test Setup          Abrir navegador    
Test Teardown       Fechar navegador

*** Test Cases ***
Realizar uma Compra com Sucesso
    Given que esteja logado
    When clicar no botão Dresses na tela de Home
    And selecionar opção de compra Printed Summer Dress
    And clicar em adicionar no Carrinho
    And clicar em prosseguir para o Checkout
    And clicar em prosseguir para o Checkout na tela de Summary
    And preencher comentário na tela de Address
    And clicar em prosseguir para o Checkout na tela de Address
    And clicar na checkbox termos de serviços na tela de Shipping
    And clicar em prosseguir para o Checkout na tela de Shipping
    And clicar no botão Pay by check na tela de Payment
    And clicar no botão Confirm Order na tela de Payment
    Then a compra deverá ser realizada com sucesso