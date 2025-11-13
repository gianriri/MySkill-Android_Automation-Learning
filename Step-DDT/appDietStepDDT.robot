*** Settings ***
Library           AppiumLibrary
Library           Collections
Library           OperatingSystem
Resource          ../Resources/appDietPages.robot
Variables         ../Resources/appDietLocator.yaml
Suite Setup       Start Session Apps
Suite Teardown    Close Apps

*** Test Cases ***
Input Data For Each User
    ${data}=    Evaluate    __import__('csv').DictReader(open('../Resources/user.csv'))    sys, csv
    FOR    ${row}    IN    @{data}
        ${username}=    Set Variable    ${row['username']}
        ${weight}=      Set Variable    ${row['weight']}
        ${height}=      Set Variable    ${row['height']}
        Log To Console    \nRunning test for: ${username}
        Input User Data Template    ${username}    ${weight}    ${height}
    END

*** Keywords ***
Input User Data Template
    [Arguments]    ${username}    ${weight}    ${height}

    Wait Until Element Is Visible    ${homePageNameField}    timeout=10s

    Input Text    ${homePageNameField}    ${username}
    Input Text    ${homePageWeightField}    ${weight}
    Input Text    ${homePageHeightField}    ${height}
    Tap           ${homePageNextButton}
    Capture Page Screenshot
    Sleep    1
