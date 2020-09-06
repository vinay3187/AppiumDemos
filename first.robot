*** Setting ***
Library    AppiumLibrary
Resource    ../AppiumDemos/libspecs/Resourcs/resources.robot
*** Keywords ***
My_Keyword
    Scroll    android=UiSelector().text("Views")    xpath=(//android.widget.TextView[@text="Preference"])
    Click Element    android=UiSelector().text("Views")    
*** Test Cases ***
Preference
    Log    Preference_logs
    [Setup]    Open App
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Preference"]
    AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="3. Preference dependencies"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="3. Preference dependencies"]
    AppiumLibrary.Click Element    id=android:id/checkbox
    AppiumLibrary.Click Element    xpath=(//android.widget.RelativeLayout)[2]
    AppiumLibrary.Wait Until Page Contains Element    id=android:id/edit
    AppiumLibrary.Click Element    id=android:id/edit
    AppiumLibrary.Input Text    id=android:id/edit    text=123
    AppiumLibrary.Click Element    id=android:id/button1

    
Views
    AppiumLibrary.Scroll    android=UiSelector().text("Views")    xpath=(//android.widget.TextView[@text="Preference"])
    AppiumLibrary.Click Element    android=UiSelector().text("Views")
    AppiumLibrary.Wait Until Page Contains Element    xpath=(//android.widget.TextView[@text="Expandable Lists"])
    AppiumLibrary.Click Element    xpath=(//android.widget.TextView[@text="Expandable Lists"])
    AppiumLibrary.Wait Until Page Contains Element    xpath=(//android.widget.TextView[@text="1. Custom Adapter"])    
    AppiumLibrary.Tap    xpath=(//android.widget.TextView[@text="1. Custom Adapter"])
    AppiumLibrary.Wait Until Page Contains Element    xpath=(//android.widget.TextView[@text="People Names"])    
    AppiumLibrary.Long Press    xpath=(//android.widget.TextView[@text="People Names"])    5000
    AppiumLibrary.Capture Page Screenshot    Views_longpress.png
Views_swipe
    AppiumLibrary.Scroll    android=UiSelector().text("Views")    xpath=(//android.widget.TextView[@text="Preference"])
    AppiumLibrary.Click Element    android=UiSelector().text("Views")
    AppiumLibrary.Click Element    xpath=(//android.widget.TextView[@text="Date Widgets"])
    AppiumLibrary.Click Element    android=UiSelector().text("2. Inline")
    AppiumLibrary.Wait Until Page Contains Element    xpath=(//*[@content-desc="9"])    
    AppiumLibrary.Click Element    xpath=(//*[@content-desc="9"])
    AppiumLibrary.Swipe    start_x=500    start_y=568    offset_x=139    offset_y=568
    [Teardown]    Close App
View_scroll
    [Setup]    Open App
    My_Keyword
    Wait Until Page Contains Element    android=UiSelector().text("Animation")
    Scroll    android=UiSelector().text("Focus")    android=UiSelector().text("Animation")
    Scroll    android=UiSelector().text("Secure View")    android=UiSelector().text("Lists")
    [Teardown]    Close App
Drag_and_Drop
    [Setup]    Open App
    My_Keyword
    Click Element    android=UiSelector().text("Drag and Drop")
    Long Press    id=io.appium.android.apis:id/drag_dot_1
    Swipe    start_x=0    start_y=264    offset_x=316    offset_y=264
    Wait Until Page Contains Element    id=io.appium.android.apis:id/drag_result_text
    [Teardown]    Close App 

TC 01 Variable
        ${var}=    Set Variable    test

*** Variables ***

    
    