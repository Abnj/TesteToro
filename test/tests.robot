*** Settings ***
Documentation    Este arquivo contém os casos de teste de login do usuário na plataforma Toro Investimentos.
Resource   ../resource/main.robot
Test Setup    Abrir o navegador

*** Test Cases ***

TC01: Login Usando E-mail e Senha válidos
    [Documentation]  Teste que válida o login ao enviar E-mail e Senha válidos.
    [Tags]    TC01
    Dado que estou na home page do site e acesso a pagina de login
    Quando realizo login com Email "valido" e Senha "valida"
    Então realizo login
    
TC03: Login Usando E-mail e Senha inválidos
    [Documentation]  Teste que válida o login ao enviar Email e Senha inválidos.
    [Tags]    TC03
    Dado que estou na home page do site e acesso a pagina de login
    Quando realizo login com Email "invalido" e Senha "invalida"
    Então retorna mensagem de erro "Dados incorretos. Digite novamente."