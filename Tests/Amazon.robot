*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User should be required to sign in when checking out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com/  chrome
    Wait Until Page Contains  Today's Deals
    Input Text  id=twotabsearchtextbox  Kindle Oasis
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains  results for "Kindle Oasis"
    Close Browser

*** Keywords ***
