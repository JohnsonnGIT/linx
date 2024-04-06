*** Settings ***
Documentation    Arquivo base dos testes

Library    SeleniumLibrary

*** Variables ***
${INDEX_NAVIGATE_ELLEMENT}    id=topo

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${INDEX_NAVIGATE_ELLEMENT}
    Page Should Contain Element    ${INDEX_NAVIGATE_ELLEMENT}
    