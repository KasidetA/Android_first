*** Keywords ***
Tap cart icon
    Tap when ready      ${cart_locator.cart_icon}

Verify total item quantity in cart
    AppiumLibrary.wait until page contains element    ${cart_locator.total_item_quantity}    ${waiting_time}
    ${item_count}    AppiumLibrary.get text    ${cart_locator.total_item_quantity}
    should be equal   ${item_count}    ${item_quantity}