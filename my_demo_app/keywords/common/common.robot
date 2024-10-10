*** Keywords ***
Tap when ready
    [Arguments]             ${locator}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    ${waiting_time}
    AppiumLibrary.click element       ${locator}

Open test application
    Run Keyword If    '${platform}' == 'android'    Open android application
    ...     ELSE       Open ios application

Open android application
    AppiumLibrary.Open Application      remote_url=${android_phone.remote_url}  
    ...                                 automationName=${android_phone.automationName}  
    ...                                 platformName=${android_phone.platformName}
    ...                                 platformVersion=${android_phone.platformVersion}
    ...                                 deviceName=${android_phone.deviceName}
    ...                                 appPackage=${android_phone.appPackage}
    ...                                 appActivity=${android_phone.appActivity}

Open ios application
    AppiumLibrary.Open Application      remote_url=${ios_phone.remote_url}
    ...                                 platformName=${ios_phone.platformName}
    ...                                 automationName=${ios_phone.automationName}
    ...                                 deviceName=${ios_phone.deviceName}
    ...                                 platformVersion=${ios_phone.platformVersion}
    ...                                 udid=${ios_phone.udid}
    ...                                 bundleId=${ios_phone.bundleId}