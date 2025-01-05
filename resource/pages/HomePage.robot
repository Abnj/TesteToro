*** Settings ***
Documentation    Neste arquivo estão as ações página home.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome  
    Maximize Browser Window
    Go To    url=${URL}

# Fechar o navegador
#     Close Browser

Dado que estou na home page do site e acesso a pagina de login

    Wait Until Element Is Visible    ${Home.botao_login}
    Click Element    ${Home.botao_login}