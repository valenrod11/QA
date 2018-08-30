*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking cart
    [Tags]  TC-eshop-22
	Click Element  css=#special_products-slider > div > div > div:nth-child(3)
    Wait Until Page Contain Element  ${IN_CART}
    Click Button  ${IN_CART}
	Click Element  ${CART}
	Click Element  ${BTN_CHECKOUT}
	Page Should Contain Element  ${CONFIRM}

Checking cart
    [Tags]  TC-eshop-23
    Click Element  css=#special_products-slider > div > div > div:nth-child(3)
    Wait Until Page Contain Element  ${IN_CART}
    Click Button  ${IN_CART}
	Click Element  ${CART}
	Click Element  ${EDIT_CART}
	Click Button  ${CLEAR_BTN}
	Wait Until Page Contain  css=p
	Page Should Contain Element  css=p