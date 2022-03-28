
# Validação de algumas páginas do site de teste do QANINJA

Automação de teste utilizando o Robot Framework e gerar um relatórios com as assertivas.
## :wrench: Ferramentas utilizadas

- Sellenium
- Robot Framework
- Node
- Git
- Visual Studio Code
- Cmder
- chromedriver.exe (https://chromedriver.chromium.org/home)
    
## :mag: Extensão utilizada Visual Studio Code

- Pynthon
- Robot Framework Intellisense - Tomi Turtiainen
- Material icon Theme
- hyper term theme

## :computer: Instalação

Comando para instalação do robotframework

```bash
  pip install robotframework-seleniumlibrary
```
Após baixar o arquivochromedriver.exe é necessário copiar o arquivo até a pasta Windows, para que o Robot Framework consiga utilizar o Google Chome para executar os testes.

## :black_nib: Cenário de Testes

```bash
  Validar título do site. (title.robot)
  Validar marcação checkbox. (checkbox.robot)
  Validar marcação de opções do tipo radio. (radio.robot)
  Validar se está retornando o valor e a posição dos texto no tipo select do html. (select.robot)
  Validar os valores dos objetos do tipo tabela. (tables.robot)
  Validar login do usuário feito com sucesso, validar a mensagem de usuário inexiste e validar a mensagem de usuário não existe. (login_form)
```

## :hourglass: Executando os testes.

Utilizar um dos comandos abaixo para executar os testes.

```bash
  criar a pasta log na pasta raiz onde será executado o arquivo
  robot -d ./log tests\title.robot
  robot -d ./log tests\checkbox.robot
  robot -d ./log tests\radio.robot
  robot -d ./log tests\select.robot
  robot -d ./log tests\tables.robot
  robot -d ./log tests\login_form.robot
```
## 🚀 Autor
Jonathas Santos


## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](www.linkedin.com/in/jonathasbsantos)

