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
    
#TC02: Login Usando CPF e Senha válidos    
#     [Documentation]  Teste que válida o login ao enviar CPF e Senha válidos.
#     [Tags]    TC02
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com CPF válido e Senha válida
#     Então realizo login

TC03: Login Usando E-mail e Senha inválidos
    [Documentation]  Teste que válida o login ao enviar Email e Senha inválidos.
    [Tags]    TC03
    Dado que estou na home page do site e acesso a pagina de login
    Quando realizo login com Email "invalido" e Senha "invalida"
    Então retorna mensagem de erro "Dados incorretos. Digite novamente."

#TC 04: Login com E-mail válido e Senha inválida 
#     [Documentation]  Teste que válida o login ao enviar E-mail válido e Senha inválida.
#     [Tags]    TC04
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com Email válido e Senha inválida
#     Então retorna mensagem de erro "Dados incorretos. Digite novamente."

#TC 05: Login com E-mail inválido e Senha válida
#     [Documentation]  Teste que válida o login ao enviar E-mail inválido e Senha válida.
#     [Tags]    TC05
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com Email inválido e Senha válida
#     Então retorna mensagem de erro "Dados incorretos. Digite novamente."

#TC 06: Login com E-mail e Senha vazio
#     [Documentation]  Teste que valida o login ao enviar E-mail e senha vazios.
#     [Tags]    TC06
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com Email vazio e Senha vazio
#     Então retorna mensagem de erro "E-mail inválido"
#     E retorna mensagem de erro "Senha inválida"

#TC 07: Login com E-mail válido e Senha maior que o permitido
#     [Documentation]  Teste que valida o login ao enviar E-mail válido e senha inválida.
#     [Tags]    TC07
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com Email válido e Senha maior que o permitido
#     Então retorna mensagem de erro "Dados incorretos. Digite novamente."

#TC 08: Login com E-mail válido e Senha menor que o permitido
#     [Documentation]  Teste que valida o login ao enviar E-mail válido e Senha inválida.
#     [Tags]    TC08
#     Dado que estou na home page do site e acesso a pagina de login
#     Quando realizo login com Email válido e Senha menor que o permitido
#     Então retorna mensagem de erro "Dados incorretos. Digite novamente."