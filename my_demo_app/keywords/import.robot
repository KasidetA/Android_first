*** Settings ***
Library         AppiumLibrary

Resource    ${CURDIR}/features/cart_feature.robot

Resource    ${CURDIR}/pages/cart_page.robot
Resource    ${CURDIR}/pages/home_page.robot
Resource    ${CURDIR}/pages/product_page.robot

Resource    ${CURDIR}/common/common.robot

Resource    ${CURDIR}/../resources/locators/${platform}_locator/cart_page_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}_locator/home_page_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}_locator/product_page_locator.robot

Variables   ${CURDIR}/../resources/settings/setting.yaml
Variables   ${CURDIR}/../resources/settings/${platform}.yaml
Variables   ${CURDIR}/../resources/testdata/testdata.yaml