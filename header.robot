*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown   Close All Browsers

*** Test Cases ***
Checking header link
    [Tags]  TC-eshop-9
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(1) > a
	Page Should Contain Element  css=h1

Checking header link
    [Tags]  TC-eshop-10
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(2) > a
	Page Should Contain Element  css=h1

Checking header link
    [Tags]  TC-eshop-11
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(3) > a
	Page Should Contain Element  css=h1

Checking header callto
    [Tags]  TC-eshop-24
	Click Element  css=div.col-lg-3.col-md-2.col-sm-2 > div > a