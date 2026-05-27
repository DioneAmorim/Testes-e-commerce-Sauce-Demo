*** Settings ***
Library    SeleniumLibrary

Resource    ../Resource/pages_bdd/login_bdd.robot
Resource    ../Resource/pages_bdd/produtos_bdd.robot
Resource    ../Resource/pages_bdd/checkout_bdd.robot

#Arquivos procedurais
Resource    pages/login.robot
Resource    pages/produtos.robot
Resource    pages/checkout.robot



Resource    variable.robot

Resource    navegador.robot