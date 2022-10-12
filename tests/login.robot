*** Settings ***
Documentation    Login tests

Resource        ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User logged In

    # Click          xpath=//button[text()="Entrar"]

Nao deve logar com senha incorreta
    # [Tags]        inv_pass
    Go To Login Page
    Submit Credentials         papito@gmail.com      abc123
    Toast Message Should Be    Credenciais inválidas, tente novamente!
    
    # ${temp}        Get Page Source
    # Log            ${temp}
    