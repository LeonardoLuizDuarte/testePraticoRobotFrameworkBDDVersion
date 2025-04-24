*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    locale=pt_BR  
Resource    PageObjects/Page_SignIn.robot
Resource    PageObjects/Page_Home.robot

*** Variables ***
${URL}             http://www.automationpractice.pl/index.php
${BROWSER}         chrome

*** Keywords ***
Abrir navegador
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Given que esteja no site de compras
    Page Should Contain Element    //*[@id="header"]/div[1]/div/div/a

Given que esteja logado
    Clicar Botao SignIn
    Preencher Campo Email Create An Account Sign In
    Preencher Campo Password Create An Account Sign In
    Clicar Botao Login Sign In

When clicar no botão Sign In na tela de Home
    Clicar Botao SignIn

When clicar no botão Dresses na tela de Home
    Clicar Botao Dresses