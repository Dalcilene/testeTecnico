*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${BOTAO_CONTINUAR_COMPRAR}          xpath=//a[@class='dsvia-button css-1j6q35c'][contains(.,'Continuar a compra')]
${TITULO_CARRINHO}                  Meu Carrinho | Casas Bahia
${IDENTIFICAÇÂO}                    xpath=//h1[@data-testid='identification-label'][contains(.,'Identificação')]

*** Keywords ***


Clicar em Continuar a compra
    Title Should Be                         ${TITULO_CARRINHO}
    Click Button                            ${BOTAO_CONTINUAR_COMPRAR} 

Validar tela de identificação
    Wait Until Element Is Visible           ${IDENTIFICAÇÂO}

    
    