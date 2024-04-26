*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}                              http://www.casasbahia.com.br/
${MENU_TELEFONIA}                   xpath=//a[contains(.,'Telefonia')]
${PESQUISA_TELEFONIA}               id=search-form-input
${BOTAO_PESQUISAR_TELEFONIA}        xpath=//button[contains(@type,'submit')]
${PRODUTO_PESQUISADO}               xpath=//a[contains(@class,'dsvia-link-overlay css-1ogn60p')]
${CEP}                              id=frete
${LOCALIZACAO}                      id=location
${BOTAO_CONSULTAR_FRETE}            xpath=//button[@class='dsvia-button e1y72hko0 css-1lai4fs'][contains(.,'Consultar')]
${BOTAO_COMPRAR}                    id=buy-button

*** Keywords ***

Acessar a home page do site casasbahia.com.br
    Go To                            ${URL}
    Wait Until Element Is Visible    ${MENU_TELEFONIA}

Entrar no menu "Telefonia"
    Click Element                    ${MENU_TELEFONIA}

Digitar o nome do produto "${PRODUTO_PESQUISADO}" no campo de pesquisa
    Input Text                       ${PESQUISA_TELEFONIA}    ${PRODUTO_PESQUISADO}

Clicar no botão pesquisa
    Click Element                    ${BOTAO_PESQUISAR_TELEFONIA}

Verificar o resultado da pesquisa, listando o produto pesquisado "${PRODUTO_PESQUISADO}"
    Wait Until Element Is Visible    ${PRODUTO_PESQUISADO}

Clicar no produto pesquisado
    Click Element                   ${PRODUTO_PESQUISADO}

Digitar o cep "${CEP_DIGITADO}"
    Input Text                      ${CEP}     ${CEP_DIGITADO}

Clicar no botão consultar
    Click Button                    ${BOTAO_CONSULTAR_FRETE}

Verificar o resultado da busca do cep "${ENDERECO_CEP_PESQUISADO}"
    Wait Until Element Is Visible    ${LOCALIZACAO} 
    Wait Until Page Contains Element    ${ENDERECO_CEP_PESQUISADO}

Clicar no botão comprar
    Click Button                    ${BOTAO_COMPRAR} 
    

    