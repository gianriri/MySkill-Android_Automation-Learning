*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/appDietPages.robot
Variables    ../Resources/appDietLocator.yaml
Suite Setup    Start Session Apps
Suite Teardown    Close Apps

*** Test Cases ***
As user I want to open Diet App
    Sleep    5
    Page Should Contain Text    Welcome

As a user I want to input my data
    User Input Welcome Data
    User Tap Next Button
    Close Apps