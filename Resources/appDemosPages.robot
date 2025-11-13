*** Settings ***
Library    AppiumLibrary
Variables    ../Resources/locator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout    10
    Open Application      http://127.0.0.1:4723
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=realme 6
    ...                   app=E:/CV/MySkill/Software Quality Assurance/Case Studies/Bab 7 Mobile Automation/(4) Android Automation/Apk/ApiDemos-debug.apk
    ...                   appPackage=io.appium.android.apis
    ...                   appActivity=io.appium.android.apis.ApiDemos
    ...                   autoGrantPermissions=true
    ...                   noReset=true
    Sleep                 1

Tap Accessibility
    Tap    ${accessibility}

Tap Accessibility Node Provider
    Capture Page Screenshot
    Tap    ${accessibility_node_provider}

Close Session Apps
    Capture Page Screenshot
    Close Session Apps

Close Apps
    Close Apps