*** Settings ***
Library    AppiumLibrary
Variables    ../Resources/appDietLocator.yaml

*** Keywords ***
Start Session Apps
    Set Appium Timeout    10
    Open Application      http://127.0.0.1:4723
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=realme 6
    ...                   appPackage=com.fghilmany.dietmealapp
    ...                   appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity
    ...                   autoGrantPermissions=true
    ...                   noReset=true
    ...                   ignoreHiddenApiPolicyError=${True}
    Sleep                 1

User Input Welcome Data
    Input Text    ${homePageNameField}    John
    Input Text    ${homePageWeightField}    75
    Input Text    ${homePageHeightField}    185
    Tap           ${homePageNextButton}

User Tap Next Button
    Tap    ${homePageNextButton}
    Capture Page Screenshot

Close Session Apps
    Capture Page Screenshot
    Close Application

Close Apps
    Capture Page Screenshot
    Close All Applications