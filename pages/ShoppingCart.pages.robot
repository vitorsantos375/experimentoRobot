*** Settings ***

Library     SeleniumLibrary

Resource    ../components/components.robot

*** Keywords ***
    PesquisaProduto
        Wait Until Element Is Visible ${InputSearch}    timeout = 3
        Input Text    ${InputSearch}    "teste"    clear=True
        Click Element   ${btnSearch}
        Wait Until Element Is Visible ${img_tshirt}     timeout=2

    