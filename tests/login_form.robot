*** Settings ***
Resource    base.robot

Test Setup      Nova sessao 
Test Teardown   Encerra sessao

*** Test Cases ***
Login com sucesso
    Go To           ${url}/login
    Login With      stark   jarvis!
    
    Should See Logged User      Tony Stark

Senha inválida
    [tags]          login_error
    Go To           ${url}/login
    Login With      stark  abc123

    Should Contain Login Alert      Senha é invalida!

usuário não existe
    [tags]          user_error
    Go To           ${url}/login
    Login With      teste  abc123

    Should Contain Login Alert      O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]     ${uname}   ${pass}
    
    input text      css:input[name=username]        ${uname}
    input text      css:input[name=password]        ${pass}
    Click Element   class:btn-login

Should Contain Login Alert
    [Arguments]     ${expect_message}
    
    ${message}=     Get WebElement                  id:flash
    Should Contain  ${message.text}                 ${expect_message}

Should See Logged User
    [Arguments]     ${full_name}

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!