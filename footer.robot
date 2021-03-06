*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking footer link
    [Tags]  TC-eshop-12
	Click Element  css=div.col-md-4.col-sm-6 > div > div > div:nth-child(2) > a
	Page Should Contain Element  css=h1

Checking callto link
    [Tags]  TC-eshop-13
	Click Element  css=div:nth-child(2) > div > a:nth-child(1)
	Page Should Contain Element  css=h1

Checking callto link
    [Tags]  TC-eshop-14
	Click Element  css=div:nth-child(2) > div > a:nth-child(2)
	Page Should Contain Element  css=h1

Checking emailto link
    [Tags]  TC-eshop-15
	Click Element  css=div:nth-child(2) > div > a:nth-child(3)
	Page Should Contain Element  css=h1

Checking skype link
    [Tags]  TC-eshop-16
    Click Element  css=div:nth-child(2) > div > a:nth-child(4)
    Page Should Contain Element  css=h1

Checking social link twitter
    [Tags]  TC-eshop-17
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(1)
	Page Should Contain Element  css=h1

Checking social link vk
    [Tags]  TC-eshop-18
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(2)
	Page Should Contain Element  css=h1

Checking social link facebook
    [Tags]  TC-eshop-19
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(3)
	Page Should Contain Element  css=h1

Checking social link google
    [Tags]  TC-eshop-20
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(4)
	Page Should Contain Element  css=h1

Checking social link odnoklassniki
    [Tags]  TC-eshop-21
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(5)
	Page Should Contain Element  css=h1