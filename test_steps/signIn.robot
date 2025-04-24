*** Settings ***
Resource            ../resource/BDD_Keywords_SignIn.robot
Resource            ../resource/BDD_Keywords.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Realizar Login com sucesso
    Given que esteja no site de compras
    When clicar no botão Sign In na tela de Home
    And realizar o Login com credenciais válidas
    And clicar no Botão Sign In
    Then o login é realizado com sucesso
