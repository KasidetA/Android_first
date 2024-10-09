*** Settings ***
Library         AppiumLibrary
Library         OperatingSystem

Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

Resource    ${CURDIR}/../keywords/commons/common.robot

Resource    ${CURDIR}/../resources/locators/cart_locator.robot
Resource    ${CURDIR}/../resources/locators/home_locator.robot
Resource    ${CURDIR}/../resources/locators/product_locator.robot

Variables   ${CURDIR}/settings/setting.yaml
Variables   ${CURDIR}/testdata/testdata.yaml