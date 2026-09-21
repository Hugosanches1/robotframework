*** Settings ***
Documentation    Meu primeiro teste Robto com GitActions
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${DIRETORIO}   ./screenshots

*** Test Cases ***
Abrir Navegador Chrome
    Open Browser    https://seubarriga.wcaquino.me/    chrome    #options=add_argument(--headless)
    maximize Browser Window
    Sleep    1s
    input Text    id=email    robot123@robot123
    input Text    id=senha    robot123
    click Button    xpath=//button[@class='btn btn-primary']
    Sleep    2s
    Create Directory    ${DIRETORIO}
    Capture Page Screenshot    ${DIRETORIO}/screenshot.png
    Close Browser
    