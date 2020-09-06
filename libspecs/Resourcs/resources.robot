*** Settings ***
Library    AppiumLibrary    
*** Keywords ***
Open App
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=6.0    deviceName=ZY2222VPNN    appPackage=io.appium.android.apis    appActivity=io.appium.android.apis.ApiDemos     
    
Close App
    AppiumLibrary.Close Application