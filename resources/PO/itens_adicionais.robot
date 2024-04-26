*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${GARANTIA_EXTENDIDA}               xpath=//span[@class='flex flex-1 items-center gap-3'][contains(.,'+36 meses')]
${SEGURO}                           xpath=//p[@class='max-w-fit sm:w-auto text-base'][contains(.,'+24 meses de Roubo/Furto + Quebra')]
${SUPORTE}                          xpath=//p[@class='max-w-fit sm:w-auto text-base'][contains(.,'Super Help 8gb')]
${BOTAO_ADICIONAR_CONTINUAR}        xpath=//button[contains(@data-testid,'continuar')]

*** Keywords ***

Contratar garantia estendida para o produto
    Click Element           ${GARANTIA_EXTENDIDA}

Contratar seguro 
    Click Element           ${SEGURO}    
    
Contratar serviço técnico
    Click Element           ${SUPORTE}   
    

Clicar em Adicionar e continuar
    Click Button            ${BOTAO_ADICIONAR_CONTINUAR} 


    
    