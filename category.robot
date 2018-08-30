*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking first category
    [Tags]  TC-eshop-1
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element  ${SORT}

Checking first category
    [Tags]  TC-eshop-2
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(3) > a:nth-child(1)
	Click Element  css=li:nth-child(3) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(10)
	Page Should Contain Element  ${SORT}

Checking second category
    [Tags]  TC-eshop-3
	Click Element  css=li:nth-child(2) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(9)
	Page Should Contain Element  ${SORT}

Checking second category
    [Tags]  TC-eshop-4
	Click Element  css=li:nth-child(2) > a > span
	Wait Until Element Is Visible  css=li:nth-child(2) > a:nth-child(1)
	Click Element  css=li:nth-child(2) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(1) > a
	Page Should Contain Element  ${SORT}

Checking third category
    [Tags]  TC-eshop-5
	Click Element  css=li:nth-child(3) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(8) > a
	Page Should Contain Element  ${SORT}

Checking third category
    [Tags]  TC-eshop-6
	Click Element  css=li:nth-child(3) > a > span
	Wait Until Element Is Visible  css=li:nth-child(5) > a:nth-child(1)
	Click Element  css=li:li:nth-child(5) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(7) > a
	Page Should Contain Element  ${SORT}

Checking fifth category
    [Tags]  TC-eshop-7
	Click Element  css=li:nth-child(5) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(4) > a
	Page Should Contain Element  ${SORT}

Checking fifth category
    [tags]  TC-eshop-8
	Click Element  css=li:nth-child(5) > a > span
	Wait Until Element Is Visible  css=li:nth-child(7) > a:nth-child(1)
	Click Element  css=li:li:nth-child(7) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(11) > a
	Page Should Contain Element  ${SORT}