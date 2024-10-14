*** Keywords ***
Scroll To Product And Tap
    [Arguments]    ${product}=${product_name}
    ${locator}    Replace String    ${home_locator.product_selected}    ${product_name}    ${product}
    FOR    ${index}    IN RANGE    10
        ${result}=    BuiltIn.Run Keyword And Ignore Error    AppiumLibrary.Click element    ${locator}
        BuiltIn.Run Keyword If    '${result[0]}' == 'PASS'    Exit For Loop
        AppiumLibrary.Swipe    70    1000    70    100
    END