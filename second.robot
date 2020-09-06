*** Setting ***
Library    AppiumLibrary
Library    Collections    
*** Keywords ***
My_Keyword
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=6.0    deviceName=ZY2222VPNN    appPackage=io.appium.android.apis    appActivity=io.appium.android.apis.ApiDemos    
*** Variables ***
${var1}=    Starting Test

*** Test Cases ***
Preference
    Log    Preference_logs
    ${var2}=    Set Variable    PreferenceTest
    Log To Console    ${var1}    
    Log To Console    ${var2}    
    My_Keyword
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Preference"]
    AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="3. Preference dependencies"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="3. Preference dependencies"]
    AppiumLibrary.Click Element    id=android:id/checkbox
    AppiumLibrary.Click Element    xpath=(//android.widget.RelativeLayout)[2]
    AppiumLibrary.Wait Until Page Contains Element    id=android:id/edit
    AppiumLibrary.Click Element    id=android:id/edit
    AppiumLibrary.Input Text    id=android:id/edit    text=123
    AppiumLibrary.Click Element    id=android:id/button1

Variable test
    @{List1}    Create List    Hello    22    22.5    Adroid123
    ${List1_Length}    Get Length    ${List1}
    Log To Console    ${List1_Length}    
    ${List_data}=    Get From List    ${List1}    2
    Log To Console    ${List_data}    
    FOR    ${i}    IN RANGE    1    10
        Log To Console    ${i}    
    END 
    FOR    ${i}    IN    @{List1}
        Log To Console    ${i}    
    END  
    ${keyword}=    Set Variable    Log To Console   
    Run Keyword    ${keyword}    Testing
    ${var}=    Set Variable    Yes 
    Run Keyword If    '${var}'=='Yes'    Log To Console    found        
    