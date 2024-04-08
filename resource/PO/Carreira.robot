*** Settings ***
Documentation    Arquivo base dos testes

Library    SikuliLibrary
Library    SeleniumLibrary

*** Variables ***
${CARREIRA_LINX_PAGE_TITLE} =    //h1[contains(text(), "Carreira Linx")]
${SEGMENT_RESULT_LIST_ITEM} =   //div[@class="o-work-with-us_results"]
${SEGMENT_SELECTOR_FIELD_ID} =   //Select[@id = "greenouse-segments"]

*** Keywords ***
Verify Page Loaded
    [Documentation]    Verifica se esta na pagina de carreiras
    Wait Until Element Is Visible  ${CARREIRA_LINX_PAGE_TITLE}
    Page Should Contain Element    ${CARREIRA_LINX_PAGE_TITLE}

The "${work_segment_name}" Work Segment Should Not Be Displayed
    Wait Until Element Is Visible    ${SEGMENT_RESULT_LIST_ITEM}
    Page Should Not Contain Element    //p[contains(text(),"${work_segment_name}")]

Select the work segment "${work_segment_name}"
    [Documentation]    Filtra o segmento de trabalho
    Sleep    5s
    Page Should Contain Element   ${SEGMENT_SELECTOR_FIELD_ID}    10
    Click Element    ${SEGMENT_SELECTOR_FIELD_ID}
    Select From List By Value     ${SEGMENT_SELECTOR_FIELD_ID}    ${work_segment_name}

Verify if the "${work_segment_name}" Work Segment is Not Displayed 
    Wait Until Page Contains Element    ${SEGMENT_SELECTOR_FIELD_ID} 
    Page Should Not Contain Element    //p[contains(text(),"${work_segment_name}")]

Verify if the "${work_segment_name}" Work Segment is Displayed 
    Wait Until Page Contains Element    //p[contains(text(),"${work_segment_name}")] 
    Page Should Contain Element    //p[contains(text(),"${work_segment_name}")]
    

    
    
    

