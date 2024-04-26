*** Settings ***
Documentation    Essa suíte testa o site cassabahia.com.br
Resource         ..\resources\casas_bahia_bdd_resources.robot
Resource         ..\resources\casas_bahia_resources.robot
Resource         ..\resources\PO\home.robot
Resource         ..\resources\PO\itens_adicionais.robot
Resource         ..\resources\PO\carrinho.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar navegador

*** Test Cases ***

Caso de teste 01 - Compra efetuada com sucesso
    [Documentation]    Esse teste verifica a compra de um produto contratando todos os serviços adicionais com sucesso
    [Tags]             menu    busca_produtos    cep    compra   
    Dado que estou na home page casasbahia.com.br
    E pesquiso o nome do produto "Apple iPhone 15 Pro Max 1 TB -Titânio Azul" no campo de pesquisa
    E seleciono o produto pesquisado
    E preencho o campo cep com o valor "36080000"
    E verifico o resultado da busca do cep "Rua Bernardo Mascarenhas, Mariano Procópio - Juiz de Fora - MG"
    Quando clico no botão comprar
    E contrato serviços adicionais
    E clico no botão Continuar a compra 
    Então serei direcionado para a tela de identidicação

