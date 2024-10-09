*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup          common.Open application
Test Teardown       AppiumLibrary.Close Application

*** Test Cases ***
TC01
    home_page.Tap to choose product
    product_page.Tap to add product to cart
    cart_page.Tap cart icon
