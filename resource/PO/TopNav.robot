*** Settings ***
Documentation    Interações com o PO referente ao menu supeior comum da pagina

Library    SeleniumLibrary

Resource    ./Carreira.robot
Resource    ./MainPage.robot
Resource    ./MatrizFiliais.robot
Resource    ../CommonApp.robot

*** Variables ***


*** Keywords ***
Naigate to "Index"
    go to    ${START_URL}
    MainPage.Verify Page Loaded  

Select "${Submenu_Item}" Submenu in the "${Menu_Item}" Menu Item
    [Documentation]    Aceita diferentes combinações de menu e submenu
    Select the "${Menu_Item}" Menu Item
    Select the "${Submenu_Item}" Submenu Item

Select the "${Menu_Item}" Menu Item   
    [Documentation]    Interage com o menu principal
    Wait Until Element Is Visible    //nav//a[contains(text(), "${Menu_Item}")]    5s
    Click Element    //nav//a[contains(text(), "${Menu_Item}")]

Select the "${Submenu_Item}" Submenu Item
    [Documentation]    Interage com o submenu
    Wait Until Element Is Visible    //li[@class="m-list_item"]/a[contains(text(), "${Submenu_Item}")]    5s
    Click Element    //li[@class="m-list_item"]/a[contains(text(), "${Submenu_Item}")]


