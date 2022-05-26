*** Settings ***
Documentation   Essa suíte testa o app do facebook lite com usuario ficticio
Resource        facebook_lite_resources.robot


*** Test Cases ***
Caso de Teste 01 - Abrir aplicativo
    [Documentation]    Esse teste abre o aplicativo
    [Tags]             Abrir_app
    Abrir o aplicativo

Caso de Teste 02 - Login do usuario
    [Documentation]    Esse teste faz o login do usuario
    [Tags]             Login
    Sleep    12s
    Dado que estou na tela inicial do app
    Quando logar usuario e senha
    Sleep    5s
    Então mostre "Continuar ou Ok"

Caso de teste 03 - Envio de uma mensagem
    [tags]    msg
    Dado que estou na home page
    Quando clico no messenger 
    Então seleciono o Contato 
    E digito a mensagem e envio. 


# Caso de teste 03 - Comentário no post   
#     [Tags]            comentario
#     Dado que estou na home page 
#     Quando clico no perfil 
#     Então deslizo até a publicação 
#     E comento na publicação 


# Caso de teste 00 - Botão de like
#     [Documentation]    Esse teste faz o login do usuario
#     [Tags]             like
#     Dado que estou na home page 
#     Quando deslizar para o like  
#     Então mostre o like e suas interações 