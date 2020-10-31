*** Settings ***
Library  SeleniumLibrary
Library  DataDriver     ../TestData/challenge.xlsx
Resource    ../Resource/RpaResource.robot
Suite Setup     StartTheTestCase
Test Template   EnterTheData

*** Variables ***

*** Test Cases ***
EnterTheData with   ${First}     ${Last}     ${Company}  ${Role}     ${Address}  ${Email}    ${Phone}

*** Keywords ***
EnterTheData
    [Arguments]  ${First}       ${Last}     ${Company}  ${Role}     ${Address}  ${Email}    ${Phone}
    input text   xpath://input[@ng-reflect-name="labelPhone"]       ${Phone}
    input text   xpath://input[@ng-reflect-name="labelCompanyName"]       ${Company}
    input text   xpath://input[@ng-reflect-name="labelRole"]       ${Role}
    input text   xpath://input[@ng-reflect-name="labelAddress"]       ${Address}
    input text   xpath://input[@ng-reflect-name="labelEmail"]       ${Email}
    input text   xpath://input[@ng-reflect-name="labelFirstName"]       ${First}
    input text   xpath://input[@ng-reflect-name="labelLastName"]       ${Last}
    click element   xpath://input[@type="submit"]