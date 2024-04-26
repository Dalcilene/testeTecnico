*** Settings ***
Library     SeleniumLibrary
Resource         ..\resources\PO\home.robot
Resource         ..\resources\PO\itens_adicionais.robot
Resource         ..\resources\PO\carrinho.robot

*** Keywords ***

Dado que estou na home page casasbahia.com.br
    Acessar a home page do site casasbahia.com.br

E pesquiso o nome do produto "Apple iPhone 15 Pro Max 1 TB -Titânio Azul" no campo de pesquisa
    Digitar o nome do produto "${PRODUTO_PESQUISADO}" no campo de pesquisa
    Clicar no botão pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado "${PRODUTO_PESQUISADO}"
E seleciono o produto pesquisado
    Clicar no produto pesquisado

E preencho o campo cep com o valor "${CEP_DIGITADO}"
    Digitar o cep "${CEP_DIGITADO}"
    Clicar no botão consultar

E verifico o resultado da busca do cep "${ENDERECO_CEP_PESQUISADO}"
    Verificar o resultado da busca do cep "${ENDERECO_CEP_PESQUISADO}"

Quando clico no botão comprar
    Clicar no botão comprar

E contrato serviços adicionais
    Contratar garantia estendida para o produto
    Contratar seguro 
    Contratar serviço técnico
    Clicar em Adicionar e continuar

E clico no botão Continuar a compra 
    Clicar em Continuar a compra

Então serei direcionado para a tela de identidicação
    Validar tela de identificação