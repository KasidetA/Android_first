*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
Library         DebugLibrary
Library         String

Resource    ${CURDIR}/../keywords/features/cart_feature.robot

Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

Resource    ${CURDIR}/../keywords/common/common.robot

Resource    ${CURDIR}/locators/${platform}_locator/cart_page_locator.robot
Resource    ${CURDIR}/locators/${platform}_locator/home_page_locator.robot
Resource    ${CURDIR}/locators/${platform}_locator/product_page_locator.robot

Variables   ${CURDIR}/settings/setting.yaml
Variables   ${CURDIR}/settings/${platform}.yaml
Variables   ${CURDIR}/testdata/testdata.yaml