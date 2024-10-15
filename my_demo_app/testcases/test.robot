*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup          common.Open test application
Test Teardown       AppiumLibrary.Close Application
*** Test Cases ***
TC01-Choose product and verify product quantity on cart
    home_page.Scroll To Product And Tap
    product_page.Tap to add product to cart
    cart_feature.Open cart and verify item quantity