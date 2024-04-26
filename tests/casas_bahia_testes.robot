*** Settings ***
Documentation    Essa suíte testa o site cassabahia.com.br
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
    home.Acessar a home page do site casasbahia.com.br
    home.Digitar o nome do produto "Apple iPhone 15 Pro Max 1 TB -Titânio Azul" no campo de pesquisa
    home.Clicar no botão pesquisa
    home.Verificar o resultado da pesquisa, listando o produto pesquisado "Apple iPhone 15 Pro Max 1 TB -Titânio Azul"
    home.Clicar no produto pesquisado
    home.Digitar o cep "36080000"
    home.Clicar no botão consultar
    home.Verificar o resultado da busca do cep "Rua Bernardo Mascarenhas, Mariano Procópio - Juiz de Fora - MG"
    home.Clicar no botão comprar
    itens_adicionais.Contratar garantia estendida para o produto
    itens_adicionais.Contratar seguro 
    itens_adicionais.Contratar serviço técnico
    itens_adicionais.Clicar em Adicionar e continuar
    carrinho.Clicar em Continuar a compra
    carrinho.Validar tela de identificação