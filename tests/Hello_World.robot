*** Settings ***
Variables    py_variables.py
Library    Collections

*** Variables ***
${STRING_VARIABLE}    This is string variable
${NUMBER_VAR}    10
@{LIST_VARIABLE}    One    Two    Three    Four 
&{DICT_VARIABLE}    robot=Framework    python=Programming Language

*** Test Cases ***
Check if strings match
    ${string_value}    Set Variable    This is string variable
    Should Be Equal    ${string_value}    ${STRING_VARIABLE}
    Should Be Equal    ${string_value}    ${string}

Check if lists match
    ${first_item}    Set Variable    One
    Should Be Equal    ${LIST_VARIABLE}[0]    ${first_item}
    Lists Should Be Equal    ${LIST_VARIABLE}    ${list}

Check number thingies
    ${random_number}    Set Variable    9
    Should Not Be Equal As Integers   ${NUMBER_VAR}    ${random_number}
    Should Be Equal As Integers  ${random_number}    ${number}

Dictionary things
    Dictionaries Should Be Equal    ${DICT_VARIABLE}    ${python_dictionary}    # robotcode: ignore
    ${python_keys}    Get Dictionary Keys    ${python_dictionary}    # robotcode: ignore
    ${robot_keys}    Get Dictionary Keys    ${DICT_VARIABLE}
    Lists Should Be Equal    ${python_keys}    ${robot_keys}


    

