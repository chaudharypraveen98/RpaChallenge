*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://www.rpachallenge.com/

*** Keywords ***
StartTheTestCase
    Open browser    ${url}  ${browser}
    sleep   2
    Page Should Contain Element     xpath://button[contains(text(),"Start")]
    click element   xpath://button[contains(text(),"Start")]