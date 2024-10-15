*** Keywords ***
Tap cart icon
    common.Tap when ready      ${cart_locator.cart_icon}       

Verify total item quantity in cart
    common.Get text when ready    ${cart_locator.total_item_quantity}
    BuiltIn.Should be equal       ${expected_text}    ${item_quantity}