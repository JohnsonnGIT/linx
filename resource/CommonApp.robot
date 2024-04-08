*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${BROWSER} =  Chrome
${START_URL} =  https://linx.com.br

*** Keywords ***
Begin Web Test
    open browser  ${START_URL}  ${BROWSER}
    Set Selenium Speed    0.5
    #maximize browser window

End Web Test
    close all browsers