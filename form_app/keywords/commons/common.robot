*** Keywords ***
Tap when ready
    [Arguments]             ${locator}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    ${delay_time}
    AppiumLibrary.Tap       ${locator}

Open application
    AppiumLibrary.Open Application      remote_url=${android_phone.remote_url}  
    ...                                 automationName=${android_phone.automationName}  
    ...                                 platformName=${android_phone.platformName}
    ...                                 platformVersion=${android_phone.platformVersion}
    ...                                 deviceName=${android_phone.deviceName}
    ...                                 appPackage=${android_phone.appPackage}
    ...                                 appActivity=${android_phone.appActivity}

Capture page 
    [Arguments]         ${capture_file_name}
    Capture Page Screenshot     ${capture_file_name}