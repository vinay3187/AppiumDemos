*** Setting ***
Library    AppiumLibrary
*** Test Cases ***
explore
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=6.0    deviceName=ZY2222VPNN    appPackage=io.appium.android.apis    appActivity=io.appium.android.apis.ApiDemos 
    AppiumLibrary.Background App    10 
    AppiumLibrary.Capture Page Screenshot     explore.png
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Animation"]
    AppiumLibrary.Click Text    text=Default Layout Animations 
    AppiumLibrary.Element Attribute Should Match    xpath=//android.widget.Button[@text="Add Button"]    text    Add Button
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Element Name Should Be    xpath=//android.widget.TextView[@text="Content"]    Content 
    AppiumLibrary.Element Should Be Enabled    xpath=//android.widget.TextView[@text="Content"]    
    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Views"]
    AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="Text"]    Text 
    AppiumLibrary.Element Should Not Contain Text    xpath=//android.widget.TextView[@text="Text"]    Views
    AppiumLibrary.Element Text Should Be    xpath=//android.widget.TextView[@text="OS"]    OS
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="OS"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="SMS Messaging"]
    AppiumLibrary.Input Password    id=sms_recipient    text=1234
    AppiumLibrary.Input Text    id=sms_content    text=abcd
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="OS"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="SMS Messaging"]
    AppiumLibrary.Input Value    id=sms_recipient    text=1234
    AppiumLibrary.Landscape 
    AppiumLibrary.Portrait
    AppiumLibrary.Close Application  
    AppiumLibrary.Launch Application                        