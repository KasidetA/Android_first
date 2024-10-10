*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Test Setup          common.Open application
Test Teardown       AppiumLibrary.Close Application

*** Test Cases ***
TC01
    home_page.Tap sign in with http
    sign_in_feature.Sign in with http
