*** Keywords ***
Scroll To Product And Tap
    [Arguments]    ${product}=${product_name}
    ${locator}    Replace String    ${home_locator.product_selected}    ${product_name}    ${product}
    FOR    ${index}    IN RANGE    ${numbers_of_loop}
        ${result}=    BuiltIn.Run Keyword And Ignore Error    AppiumLibrary.Click element    ${locator}
        BuiltIn.Run Keyword If    '${result[0]}' == 'PASS'    Exit For Loop
        common.Scroll down the screen
    END