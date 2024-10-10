*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Test Teardown       AppiumLibrary.Close Application

*** Test Cases ***
TC01
    Open test application
    home_page.Tap to choose product
    product_page.Tap to add product to cart
    cart_feature.Open cart and verify item quantity