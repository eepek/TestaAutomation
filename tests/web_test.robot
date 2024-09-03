*** Settings ***
Library    Browser

*** Variables ***
${url}    https://www.bing.com
${browser}    chromium

*** Test Cases ***
Open bing in new browser
    New Browser    ${browser}
    New Page    ${url}
    Sleep    5
    Close Browser