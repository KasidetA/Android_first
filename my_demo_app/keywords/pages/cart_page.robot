*** Keywords ***
Tap cart icon
    common.Tap when ready      ${cart_locator.cart_icon}       

Verify total item quantity in cart
    AppiumLibrary.Wait until page contains element    ${cart_locator.total_item_quantity}    ${waiting_time}
    ${item_count}    AppiumLibrary.Get text    ${cart_locator.total_item_quantity}
    BuiltIn.Should be equal   ${item_count}    ${item_quantity}