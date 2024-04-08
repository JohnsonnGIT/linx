*** Settings ***
Documentation    This Suite

Resource    ./PO/Carreira.robot
Resource    ./PO/MainPage.robot
Resource    ./PO/MatrizFiliais.robot
Resource    ./PO/TopNav.robot

*** Variables ***
${SEARCH_TERM_SUBS_OK} =  Cascavel/PR
${SEARCH_TERM_SUBS_NOK} =  APARECIDA DE GOIANIA

*** Keywords ***

Go to index page
    TopNav.Naigate to "Index"
  
Go to "Matriz e Filiais" page
    TopNav.Select "Matriz e filiais" Submenu in the "Institucional" Menu Item
    MatrizFiliais.Verify Page Loaded

Go to "Carreira Linx" page
    TopNav.Select "Carreira Linx" Submenu in the "Institucional" Menu Item
    Carreira.Verify Page Loaded

Verify if the subsidiary name is displayed
    MatrizFiliais.Should contains "${SEARCH_TERM_SUBS_OK}" subsidiary info       #Passar a variavel na keyword
    MatrizFiliais.Should not contains "APARECIDA DE GOIANIA" subsidiary info     #Passar o Valor diretamente na Keyword

Filter the work segment
    Carreira.Select the work segment "Linx - Tecnologia e Produto"

Should Display the selected Work Segment
    Carreira.Verify if the "Linx - Tecnologia e Produto" Work Segment is Displayed
Should not Display an Unselected Work Segment
    Carreira.Verify if the "Linx - Suporte" Work Segment is Not Displayed

