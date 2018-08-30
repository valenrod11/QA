*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Login
    [Tags]  TC-eshop-27
	Click Button  css=div:div.col-lg-3.col-md-2.col-sm-12 > div > a:nth-child(1)
	Wait Until Page Contains  css=form > input
    Login
	Page Should Contain Element  css=li:nth-child(2) > a