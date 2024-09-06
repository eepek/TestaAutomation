*** Settings ***
Library    Browser
Library    Collections
Library    ..${/}libs${/}DataExtractor.py
Variables    ..${/}data${/}locators.py
Variables    ..${/}data${/}commons.py


*** Keywords ***
Open Challenge
    New Context
    New Browser    chromium
    New Page    ${URL}
    


    