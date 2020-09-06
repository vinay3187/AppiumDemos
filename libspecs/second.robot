*** Setting ***
Library    AppiumLibrary
*** Test Cases ***
Open Facebook
    Log    InstallApp_logs
    Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=6.0    deviceName=ZY2222VPNN    browserName=Chrome
    #Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android    platformVersion=6.0    deviceName=ZY2222VPNN    appPackage=com.android.chrome    appActivity=com.google.android.apps.chrome.Main
    AppiumLibrary.Click Element    id=search_box_text
    AppiumLibrary.Input Text    id=url_bar    text=www.facebook.com
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="www.facebook.com"]    
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="www.facebook.com"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="facebook"]            
    #AppiumLibrary.Click Element At Coordinates    coordinate_X=32    coordinate_Y=458
    AppiumLibrary.Input Text    xpath=(//*[@id="u_0_1"]/div[1]/div/input)    text=qwerty 
    #AppiumLibrary