*** Settings ***
Resource    base.robot

Test Setup      Nova sessao 
Test Teardown   Encerra sessao

*** Test Cases ***
Should See Page Title
    Title Should Be     Training Wheels Protocol