*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Check search system
    [Tags]  TC-eshop-25
	Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
    Click Element  ${SORT}

Check sorting system
    [Tags]  TC-eshop-26
	Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
    Click Element  ${SORT}