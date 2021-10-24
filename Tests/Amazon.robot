*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

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
    Click Link  link:All-new Kindle Oasis - Now with adjustable warm light - 8 GB, Graphite (International Version)
    Wait Until Page Contains  In Stock.
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

    Click Link  link:Proceed to checkout (1 item)
    Page Should Contain  Email or mobile phone number

    Close Browser

*** Keywords ***
