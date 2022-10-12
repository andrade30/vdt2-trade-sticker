*** Settings ***
Documentation        Arquivo principal do projeto

Library              Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Keywords ***
Fazer Login
    Go To Login Page
    Submit Credentials    papito@gmail.com   vaibrasil
    User logged In

Start Test
    New Browser    headless=False    browser=Firefox

Finish Test
    #Thinking Time
    Sleep    1s
    Take Screenshot