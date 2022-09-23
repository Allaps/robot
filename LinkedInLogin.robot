*** Settings ***
Documentation    Login
Library  SeleniumLibrary

*** Variables ***
${url}   https://linkedin.com/login

*** Test Cases ***
Verify Login to linkedin
    Open Browser   ${url}  chrome
    Wait until element is visible   id:username
    #Wait Until Keyword Succeeds  id:username
    Input Text   id:username  aallps@gmail.com
    Input Text  id:password  ZeroLand123*
    Click Element   xpath://*[@type="submit"]
    #Element Should be visible   title:Notifications timeout 5
    Close Browser
