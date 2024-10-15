*** Keywords ***
Tap when ready
    [Arguments]             ${locator}      ${delay_time}=${waiting_time}
    AppiumLibrary.Wait until page contains element    ${locator}    ${delay_time}
    AppiumLibrary.Click element       ${locator}

Get text when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait until page contains element    ${locator}    ${waiting_time}
    ${got_text}    AppiumLibrary.Get text    ${locator}
    BuiltIn.Set Suite Variable    ${expected_text}    ${got_text}

Scroll down the screen
        AppiumLibrary.Swipe    ${x_axis_start}      ${y_axis_start}     ${x_axis_end}       ${y_axis_end}

Open test application
    BuiltIn.Run keyword if    '${platform}' == 'android'    Open android application
    ...     ELSE       Open ios application

Open android application
    AppiumLibrary.Open application      remote_url=${remote_url}  
    ...                                 automationName=${android_phone.automationName}  
    ...                                 platformName=${android_phone.platformName}
    ...                                 platformVersion=${android_phone.platformVersion}
    ...                                 deviceName=${android_phone.deviceName}
    ...                                 appPackage=${android_phone.appPackage}
    ...                                 appActivity=${android_phone.appActivity}

Open ios application
    AppiumLibrary.Open application      remote_url=${remote_url}
    ...                                 platformName=${ios_phone.platformName}
    ...                                 automationName=${ios_phone.automationName}
    ...                                 deviceName=${ios_phone.deviceName}
    ...                                 platformVersion=${ios_phone.platformVersion}
    ...                                 udid=${ios_phone.udid}
    ...                                 bundleId=${ios_phone.bundleId}