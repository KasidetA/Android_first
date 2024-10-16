*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
Library         DebugLibrary
Library         String

#features
Resource    ${CURDIR}/../keywords/features/cart_feature.robot

#pages
Resource    ${CURDIR}/../keywords/pages/cart_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#locators
Resource    ${CURDIR}/locators/${platform}_locator/cart_page_locator.robot
Resource    ${CURDIR}/locators/${platform}_locator/home_page_locator.robot
Resource    ${CURDIR}/locators/${platform}_locator/product_page_locator.robot

#settings
Variables   ${CURDIR}/settings/setting.yaml
Variables   ${CURDIR}/settings/${platform}.yaml
Variables   ${CURDIR}/testdata/testdata.yaml