*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}                          chrome


*** Keywords ***

Abrir o navegador
    Open Browser       ${BROWSER}       options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser


    