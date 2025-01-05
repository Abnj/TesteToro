*** Settings ***
Documentation    Neste arquivo estão as ações página de Login.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Quando realizo login com Email "${Email}" e Senha "${Senha}"

    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//label[contains(.,'E-mail ou CPF')]   timeout=25
    Input Text    ${Campo_Name.campo_nome}    ${USERNAME_${Email}}
    Input Text    ${Campo_Password.campo_senha}    ${PASSWORD_${Senha}}
    Execute JavaScript    window.scrollBy(0, 1000)

Então realizo login

    Click Element    ${Botao_Login.botao_entrar}

    Wait Until Element Is Visible    xpath=//h3[@class='download-app-title'][contains(.,'Baixe o aplicativo da Toro para gerar o Token e acessar sua conta')]
    Capture Page Screenshot

Então retorna mensagem de erro "Dados incorretos. Digite novamente."

    Click Element    ${Botao_Login.botao_entrar}
    Wait Until Element Is Visible    xpath=//p[@class='form-error-message'][contains(.,'Dados incorretos. Digite novamente.')]