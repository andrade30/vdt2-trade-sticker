*** Settings ***
Documentation    Teste de negociação de figurinhas da copa

Resource    ../resources/pages/login.resource
Resource    ../resources/pages/dash.resource
Resource    ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Fazer Login

    Search User       legend
    Select Sticker    Neymar Jr
    Get In Touch
    Whatsapp Sticker Message    Neymar Jr