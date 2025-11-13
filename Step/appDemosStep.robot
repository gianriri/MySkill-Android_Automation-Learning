*** Settings ***
Library            AppiumLibrary   
Resource           ../Resources/appDemosPages.robot
Variables          ../Resources/locator.yaml
Suite Setup        Start Session Apps
Suite Teardown     Close Apps

*** Test Cases ***
As a user I want to open Demos apps
    Wait Until Page Contains Element    accessibility_id=Accessibility    timeout=10s
    Tap Accessibility
    Sleep    1
    Page should contain Text     Accessibility Node Provider
As a user I want to open accessibility node Provider
    Tap Accessibility Node Provider
    Page should contain Text     Enable TalkBack