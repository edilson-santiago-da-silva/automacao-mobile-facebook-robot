## Automação mobile do Facebook
Essa automação testa de forma funcional as 8 principais funcionalidades do facebook. Os sub-tópicos abaixo descrevem a estruturação do projeto.

## As  funcionalidades mais usadas no Facebook

 - [x] Função automatizada 
 - [ ] Função não automatizada
 ---
De acordo com [Digital Information World](https://www.digitalinformationworld.com/2015/02/fascinating-social-networking-stats-2015.html?m=1) ás 8 funcionalidades mais usadas pelos usuários são:
- [x] - 73% aprox. Clicou no botão de like.
- [x] - 56% aprox. Comentou em foto ou vídeo de um amigo.
- [x] - 56% aprox. Mandou mensagem para um amigo de 1 para 1.
- [ ] - 54% aprox. Leu um artigo.
- [ ] - 52% aprox. Comentou o status de um perfil.
- [ ] - 51% aprox. Leu uma notícia.
- [ ] - 47% aprox. Postou sua própria foto.
- [ ] - 44% aprox. Atualizou o status do perfil/ Postou um comentário sobre o que estava fazendo.

### Status do projeto:  🚧 Em construção... 🚧


## Pré-requisitos 

 -  [Python](https://www.python.org/)
 -  [JDK +8](https://www.oracle.com/java/technologies/javase-downloads.html)
 -  [Android Studio](https://developer.android.com/studio)
  - [Node.js/ Appium](https://nodejs.org/en/)
  - [Visual Studio](https://code.visualstudio.com/) - Pode ser o editor de sua preferência.

## Instalação & Execução Windows
- Instale o Python
- Instale o robot, execute no prompt:
``` 
pip install robotframework
```
- Instale o pacote JDK +8 
- Configure a variável de sistema PATH com o caminho para o pacote JDK exemplo: 
```
java_home| C:\Program Files (x86)\Java\jdk1.8.0_202
```
- Instale o Android Studio
- Crie um emulador Android com o Android Studio
- Configure a conta da Play Store no emulador
- Baixe o app do Facebook no emulador
- Instale o Node.js 
- Configure o Node.js para usar o Appium pelo prompt; abra o prompt e digite:
``` 
npm  
```
``` 
install -g appium 
```
### Execução da automação :
- no prompt execute:
``` 
appium 
```
- Abra o editor de Código ➡ Abra a pasta do projeto➡ **Ctrl + '** ➡ Execute no PowerShell :
``` 
robot -d ./Output Tests/facebook_lite_test.robot
```
## Autor

### 🧐 Edilson Santiago Da Silva
- [🌐Linkedln](https://www.linkedin.com/in/edilson-santiago-da-silva-634588219/)
