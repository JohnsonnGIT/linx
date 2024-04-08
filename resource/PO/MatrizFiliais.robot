*** Settings ***
Documentation    Arquivo base dos testes
Library    SeleniumLibrary
*** Variables ***
${MATRIZ_FILIAL_PAGE_TITLE}    //h1[contains(text(), "Matriz e filiais")]



*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible    ${MATRIZ_FILIAL_PAGE_TITLE} 
    Page Should Contain Element    ${MATRIZ_FILIAL_PAGE_TITLE} 

Should contains "${subsidiary_name}" subsidiary info
    Page Should Contain Element    //H3[contains(text(), "${subsidiary_name}")]
    Log    The subsidiary ${subsidiary_name} is displayed

Should not contains "${subsidiary_name}" subsidiary info
    Page Should Not Contain Element    //H3[contains(text(), "${subsidiary_name}")]
    Log    The subsidiary ${subsidiary_name} is not displayed
    

