*** Settings ***
Library    SeleniumLibrary

Resource    ./Carreira.robot
Resource    ./MainPage.robot
Resource    ./MatrizFiliais.robot

*** Variables ***


*** Keywords ***
Naigate to "Index"
    go to    ${START_URL}
    MainPage.Verify Page Loaded  

Select "${Submenu_Item}" Submenu in the "${Menu_Item}" Menu Item
    Select the "${Menu_Item}" Menu Item
    Select the "${Submenu_Item}" Submenu Item

Select the "${Menu_Item}" Menu Item   
    Wait Until Element Is Visible    //nav//a[contains(text(), "${Menu_Item}")] 
    Click Element    //nav//a[contains(text(), "${Menu_Item}")]

Select the "${Submenu_Item}" Submenu Item
    Wait Until Element Is Visible    //li[@class="m-list_item"]/a[contains(text(), "${Submenu_Item}")]
    Click Element    //li[@class="m-list_item"]/a[contains(text(), "${Submenu_Item}")]


