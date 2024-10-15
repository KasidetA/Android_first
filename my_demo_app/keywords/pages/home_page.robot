*** Keywords ***
Scroll to product and tap
    [Arguments]    ${product}=${product_name}
    ${locator}    String.Replace string    ${home_locator.product_selected}    ${product_name}    ${product}
    FOR    ${index}    IN RANGE    ${numbers_of_loop}
        ${result}=    BuiltIn.Run keyword and ignore error    AppiumLibrary.Click element    ${locator}
        BuiltIn.Run keyword if    '${result[0]}' == 'PASS'    Exit for loop
        common.Scroll down the screen
    END