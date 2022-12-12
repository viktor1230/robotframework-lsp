*** Settings ***
Resource          dupe_keywords.resource

*** Variables ***
${INDENT}         ${SPACE * 4}

*** Test Cases ***
Using keyword defined twice fails
    [Documentation]    FAIL Keyword with same name defined multiple times.
    Defined twice
#!  ^^^^^^^^^^^^^ Multiple keywords matching: 'Defined twice' in current file.

Using keyword defined thrice fails as well
    [Documentation]    FAIL Keyword with same name defined multiple times.
    Defined thrice
#!  ^^^^^^^^^^^^^^ Multiple keywords matching: 'Defined thrice' in current file.

Keyword with embedded arguments defined twice fails at run-time: Called with embedded args
    [Documentation]    FAIL
    ...    Test case file contains multiple keywords matching name 'Embedded arguments twice':
    ...    ${INDENT}Embedded \${arguments match} TWICE
    ...    ${INDENT}Embedded \${arguments} twice
    Embedded arguments twice
#!  ^^^^^^^^^^^^^^^^^^^^^^^^ Multiple keywords matching: 'Embedded arguments twice' in current file.

Keyword with embedded arguments defined twice fails at run-time: Called with exact name
    [Documentation]    FAIL
    ...    Test case file contains multiple keywords matching name 'Embedded ${arguments match} twice':
    ...    ${INDENT}Embedded \${arguments match} TWICE
    ...    ${INDENT}Embedded \${arguments} twice
    Embedded ${arguments match} twice
#!             ^^^^^^^^^^^^^^^ Undefined variable: arguments match

Using keyword defined multiple times in resource fails
    [Documentation]    FAIL Keyword with same name defined multiple times.
    Defined twice in resource
#!  ^^^^^^^^^^^^^^^^^^^^^^^^^ Multiple keywords matching: 'Defined twice in resource' in 'dupe_keywords'.

Keyword with embedded arguments defined multiple times in resource fails at run-time
    [Documentation]    FAIL
    ...    Resource file 'dupe_keywords.resource' contains multiple keywords matching name 'Embedded arguments twice in resource':
    ...    ${INDENT}Embedded \${arguments match} TWICE IN RESOURCE
    ...    ${INDENT}Embedded \${arguments} twice in resource
    Embedded arguments twice in resource
#!  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Multiple keywords matching: 'Embedded arguments twice in resource' in 'dupe_keywords'.

*** Keywords ***
Defined twice
    Fail    This is not executed

Defined Twice
    Fail    This is not executed either

Defined thrice
    Fail    This is not executed

Defined Thrice
    Fail    This is not executed either

DEFINED THRICE
    Fail    Neither is this

Embedded ${arguments} twice
    Fail    This is not executed

Embedded ${arguments match} TWICE
    Fail    This is not executed
