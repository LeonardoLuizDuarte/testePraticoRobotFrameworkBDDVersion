*** Settings ***
Resource    PageObjects/Page_CompraNoSite.robot

*** Keywords ***
And selecionar opção de compra Printed Summer Dress
    Clicar na Opcao de compra Printed Summer Dress
    Selecionar Tamanho do Vestido

And clicar em adicionar no Carrinho
    Clicar em Adicionar no Carrinho

And clicar em prosseguir para o Checkout
    Clicar em Prosseguir Para o Checkout

And clicar em prosseguir para o Checkout na tela de Summary
    Clicar em Prosseguir Para o Checkout na Tela de Summary

And preencher comentário na tela de Address
    Preencher Comentario na Tela de Address

And clicar em prosseguir para o Checkout na tela de Address
    Clicar em Prosseguir Para o Checkout na Tela de Address

And clicar na checkbox termos de serviços na tela de Shipping
    Clicar na Checkbox de termos de servicos na Tela de Shipping

And clicar em prosseguir para o Checkout na tela de Shipping
    Clicar em Prosseguir Para o Checkout na Tela de Shipping

And clicar no botão Pay by check na tela de Payment
    Clicar em Pay by check na tela de Payment

And clicar no botão Confirm Order na tela de Payment
    Clicar em Confirm Order na tela de Payment

Then a compra deverá ser realizada com sucesso
    Validar Compra com sucesso