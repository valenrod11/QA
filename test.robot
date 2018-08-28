*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
TC-eshop-1
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element  ${SORT}

TC-eshop-2
    [Tags]
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(3) > a:nth-child(1)
	Click Element  css=li:nth-child(3) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(10)
	Page Should Contain Element  ${SORT}

TC-eshop-3
	Click Element  css=li:nth-child(2) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(9)
	Page Should Contain Element  ${SORT}

TC-eshop-4
	Click Element  css=li:nth-child(2) > a > span
	Wait Until Element Is Visible  css=li:nth-child(2) > a:nth-child(1)
	Click Element  css=li:nth-child(2) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(1) > a
	Page Should Contain Element  ${SORT}

TC-eshop-5
	Click Element  css=li:nth-child(3) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(8) > a
	Page Should Contain Element  ${SORT}

TC-eshop-6
	Click Element  css=li:nth-child(3) > a > span
	Wait Until Element Is Visible  css=li:nth-child(5) > a:nth-child(1)
	Click Element  css=li:li:nth-child(5) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(7) > a
	Page Should Contain Element  ${SORT}

TC-eshop-7
	Click Element  css=li:nth-child(5) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(4) > a
	Page Should Contain Element  ${SORT}

TC-eshop-8
	Click Element  css=li:nth-child(5) > a > span
	Wait Until Element Is Visible  css=li:nth-child(7) > a:nth-child(1)
	Click Element  css=li:li:nth-child(7) > a:nth-child(1)
	Wait Until Element Is Visible  css=li:nth-child(3) > span
	Click Element  css=div:nth-child(11) > a
	Page Should Contain Element  ${SORT}

TC-eshop-9
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(1) > a
	Page Should Contain Element  css=h1

TC-eshop-10
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(2) > a
	Page Should Contain Element  css=h1

TC-eshop-11
	Click Element  css=div.col-lg-6.col-md-8.col-sm-10 > ul > li:nth-child(3) > a
	Page Should Contain Element  css=h1

TC-eshop-12
	Click Element  css=div.col-md-4.col-sm-6 > div > div > div:nth-child(2) > a
	Page Should Contain Element  css=h1

TC-eshop-13
	Click Element  css=div:nth-child(2) > div > a:nth-child(1)
	Page Should Contain Element  css=h1

TC-eshop-14
	Click Element  css=div:nth-child(2) > div > a:nth-child(2)
	Page Should Contain Element  css=h1

TC-eshop-15
	Click Element  css=div:nth-child(2) > div > a:nth-child(3)
	Page Should Contain Element  css=h1

TC-eshop-16
    Click Element  css=div:nth-child(2) > div > a:nth-child(4)
    Page Should Contain Element  css=h1

TC-eshop-17
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(1)
	Page Should Contain Element  css=h1

TC-eshop-18
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(2)
	Page Should Contain Element  css=h1

TC-eshop-19
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(3)
	Page Should Contain Element  css=h1

TC-eshop-20
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(4)
	Page Should Contain Element  css=h1

TC-eshop-21
	Click Element  css=div.col-md-2.col-sm-6 > div > div > a:nth-child(5)
	Page Should Contain Element  css=h1

TC-eshop-22
	Click Element  css=#special_products-slider > div > div > div:nth-child(3)
    Wait Until Page Contain Element  ${IN_CART}
    Click Button  ${IN_CART}
	Click Element  ${CART}
	Click Element  ${BTN_CHECKOUT}
	Page Should Contain Element  ${CONFIRM}

TC-eshop-23
    Click Element  css=#special_products-slider > div > div > div:nth-child(3)
    Wait Until Page Contain Element  ${IN_CART}
    Click Button  ${IN_CART}
	Click Element  ${CART}
	Click Element  ${EDIT_CART}
	Click Button  ${CLEAR_BTN}
	Wait Until Page Contain  css=p
	Page Should Contain Element  css=p

TC-eshop-24
	Click Element  css=div.col-lg-3.col-md-2.col-sm-2 > div > a

TC-eshop-26
	Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
    Click Element  ${SORT}

TC-eshop-27
	Click Button  css=div:div.col-lg-3.col-md-2.col-sm-12 > div > a:nth-child(1)
	Wait Until Page Contains  css=form > input

	Page Should Contain Element  css=li:nth-child(2) > a