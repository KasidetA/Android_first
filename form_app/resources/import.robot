*** Settings ***
Library         AppiumLibrary

Resource    ${CURDIR}/../keywords/pages/sign_in_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot

Resource    ${CURDIR}/../keywords/features/sign_in_feature.robot

Resource    ${CURDIR}/../keywords/commons/common.robot

Resource    ${CURDIR}/../resources/locators/sign_in_locator.robot
Resource    ${CURDIR}/../resources/locators/home_locator.robot

Variables   ${CURDIR}/settings/setting.yaml
Variables   ${CURDIR}/testdata/testdata.yaml