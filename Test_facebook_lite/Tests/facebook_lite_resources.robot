*** Settings ***

Library        AppiumLibrary


*** Variables ***

${btn_outra_conta}     //android.widget.Button[@text="Entrar em outra conta"]
${btn_n_auternativas}  id=com.google.android.gms:id/cancel
${EMAIL}               seu email
${SENHA}               sua senha
${BOTAO_ENTRAR}        //android.view.ViewGroup[@index="6"]     

*** Keywords ***
Abrir o aplicativo
    Open Application    http://localhost:4723/wd/hub 
...     platformName=Android   
...     deviceName=0044226523
...     appPackage=com.facebook.katana
...     appActivity=com.facebook.katana.platform.FacebookAuthenticationActivity
...     automationName=Uiautomator2
Dado que estou na tela inicial do app
       Wait Until Element Is Visible    ${btn_outra_conta}
       Click Element                       ${btn_outra_conta}

Quando logar usuario e senha
     Sleep    6s
     Run Keyword And Ignore Error  Wait Until Element Is Visible    ${btn_n_auternativas}
     Run Keyword And Ignore Error  Click Element                       ${btn_n_auternativas}
     Wait Until Element Is Visible    locator=//android.widget.EditText[@index="3"]
     Click Element    locator=//android.widget.EditText[@index="3"]
     Input Text    locator=//android.widget.EditText[@text="Telefone ou email"]     text=${EMAIL}
     Input Text    locator=//android.widget.EditText[@text="Senha"]     text=${SENHA}
     Wait Until Element Is Visible    locator=//android.view.ViewGroup[@index="3"]
     Click Element     locator=//android.view.ViewGroup[@index="3"]

Então mostre "Continuar ou Ok"
    Wait Until Element Is Visible   locator=//android.widget.Button[@text="OK"]
    Click Element    locator=//android.widget.Button[@text="OK"]
    Sleep    5s
    Wait Until Element Is Visible   locator=//android.view.ViewGroup[@content-desc="Recusar"]
    Click Element    locator=//android.view.ViewGroup[@content-desc="Recusar"]

Dado que estou na home page
    Sleep    5s
    Wait Until Element Is Visible    locator=//android.view.ViewGroup[@content-desc="Ir para o perfil"]
    

Quando clico no messenger
    Wait Until Element Is Visible    locator=//android.view.View[@index="0"]
    Click Element    locator=//android.view.View[@index="0"]   

Então seleciono o Contato
    Sleep    5s
    Wait Until Element Is Visible    locator=//android.view.ViewGroup[@index="3" and @bounds="[0,742][1080,958]"]
    Click Element    locator=//android.view.ViewGroup[@index="3" and @bounds="[0,742][1080,958]"]

E digito a mensagem e envio.
    Wait Until Element Is Visible    locator=//android.widget.EditText[@text="Aa"]
    Click Element    locator=//android.widget.EditText[@text="Aa"]
    Wait Until Element Is Visible    locator=//android.widget.EditText[@text="Digite uma mensagem..."]
    Input Text    locator=//android.widget.EditText[@text="Digite uma mensagem..."]    text=Mensagem enviada automaticamente pelo Robot, Teste de envio de mensagem OK.🤖🧐✔
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@content-desc="Enviar"]
    Click Element    locator=//android.widget.ImageView[@content-desc="Enviar"]
   
 



#------------------------------------------------------------------------------------------------------------------------------------
#          02 Comentário em uma postagem.
# Quando clico no perfil
#     Click Element    locator=//android.view.ViewGroup[@content-desc="Ir para o perfil"]

# Então deslizo até a publicação
#     FOR    ${counter}    IN RANGE    0    3
#      Swipe    0    1800    0    10  
#      Sleep    2s
#     END

# E comento na publicação
#     Wait Until Element Is Visible    locator=//android.widget.Button[@text="Comentar"]
#     Click Element    locator=//android.widget.Button[@text="Comentar"]
#     Wait Until Element Is Visible    locator=//android.widget.EditText[@text="Escreva um comentário..."]
#     Input Text    locator=//android.widget.EditText[@text="Escreva um comentário..."]    text=Comentário realizado com teste Automatizado com Robot.🤖🧐
#     Wait Until Element Is Visible    locator=//android.view.ViewGroup[@content-desc="Enviar"]
#     Click Element    locator=//android.view.ViewGroup[@content-desc="Enviar"]


#----------------------------------------------------------------------------------------------------------------
#           01 btn like e sua interações
# Quando deslizar para o like
#     Swipe    0    1800    0    10  
#     Sleep    3s
#     Swipe    0    600    0    100 
#     Sleep    3s 

# Caso de teste botão like
# Então mostre o like e suas interações
#     Wait Until Element Is Visible    locator=//android.widget.Button[@text="Curtir"]
#     Long Press    locator=//android.widget.Button[@text="Curtir"]  duration=1s
#     Sleep   4s
#     Wait Until Element Is Visible    locator=//X.T8Q[@index="6"]
#     Click Element    locator=//X.T8Q[@index="6"] 
#     Sleep   4s
#     Wait Until Element Is Visible    locator=//android.widget.Button[@text="Triste"]
#     Long Press    locator=//android.widget.Button[@text="Triste"]  duration=2s
#     Sleep    4s
#     Wait Until Element Is Visible    locator=//X.T8Q[@index="4"]
#     Click Element    locator=//X.T8Q[@index="4"] 
#     Sleep    4s
#     Wait Until Element Is Visible    locator=//android.widget.Button[@text="Uau"]
#     Long Press    locator=//android.widget.Button[@text="Uau"]  duration=2s
#     Sleep    4s
#     Wait Until Element Is Visible    locator=//X.T8Q[@index="1"]
#     Click Element    locator=//X.T8Q[@index="1"] 
#     Sleep    4s
#     Wait Until Element Is Visible    locator=//android.widget.Button[@text="Amei"]
#     Long Press    locator=//android.widget.Button[@text="Amei"]  duration=2s
#     Sleep    4s
#     Wait Until Element Is Visible    locator=//X.T8Q[@content-desc="Curtir"]
#     Click Element    locator=//X.T8Q[@content-desc="Curtir"]   
#----------------------------------------------------------------------------------------------------------------     


    
    
