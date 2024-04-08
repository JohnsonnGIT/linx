*** Settings ***
Documentation    This is a test suit created for evaluation purposes in a selection process for a job position.

Resource    ../resource/CommonApp.robot
Resource    ../resource/LinxApp.robot

#Suite Setup    Begin Web Test
#Suite Teardown    End Web Test  

Test Setup    Begin Web Test
Test Teardown    End Web Test

#Run the Suit
# robot -d report test/Linx_Page.robot

#Run a test vy tag
# robot -d report -i test_case 02 test/Linx_Page.robot

*** Variables ***


*** Test Cases ***
nShould Be Able to Access "Linx Page"
    [Documentation]    As an user, I should be able to access the Linx web page
    [Tags]    test_case01
    LinxApp.Go to index page
    
Should Be Able to Access "Matriz e Filiais"
    [Documentation]    As an user, I should be able to access the Matriz e filiais page
    [Tags]    test_case02
    LinxApp.Go to "Matriz e Filiais" page

Should Be Able to See the Company Subsidiary Names
    [Documentation]    As an user, I should be able to see the company subsidiary names
    [Tags]    test_case03
    LinxApp.Go to "Matriz e Filiais" page
    LinxApp.Verify if the subsidiary name is displayed

Should Be Able to Access "Carreira Linx"
    [Documentation]    As an user, I should be able to access the Matriz e filiais page
    [Tags]    test_case04
    LinxApp.Go to "Carreira Linx" page

# Gherking Aproach
Should Be Able to Select a Work Segment
    [Documentation]    As an user, I Should be able to filter the work segments displayed 
    [Tags]    test_case05
    Given LinxApp.Go to "Carreira Linx" page
    When LinxApp.Filter the work segment
    Then LinxApp.Should Display the selected Work Segment    

Should not Display work Segments different of the Selected
    [Documentation]    The work segment not selected should not be displayed
    [Tags]    test_case06
    Given LinxApp.Go to "Carreira Linx" page
    When LinxApp.Filter the work segment
    Then LinxApp.Should not Display an Unselected Work Segment

All Steps In One
    [Documentation]    Runs All the steps as one test
    [Tags]    E2E
    LinxApp.Go to index page
    LinxApp.Go to "Matriz e Filiais" page
    LinxApp.Verify if the subsidiary name is displayed
    LinxApp.Go to index page
    LinxApp.Go to "Carreira Linx" page
    LinxApp.Filter the work segment
    LinxApp.Should Display the selected Work Segment
    LinxApp.Should not Display an Unselected Work Segment


    





    



