*** Settings ***
Resource    ..${/}resources${/}rpa.resource
Test Setup    Open Challenge


*** Test Cases ***
Fill In the Fields
    Click    //button[contains(text(), START)]
    @{person_file}    From File To List
    FOR  ${person}  IN  @{person_file}
        FOR  ${key}    ${value}  IN  &{INPUT_FIELD_LOCATORS}
            Fill Text    ${value}    ${person}[${key}]     
        END
        Click    //input[@type="submit"]
    END
    Take Screenshot    
    