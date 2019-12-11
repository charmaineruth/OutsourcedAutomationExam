*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Variables ***
${url}  http://automationpractice.com/index.php
${browser}  chrome

*** Keywords ***
Launch Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed  2

Click Sigin Navigator
    Click Element                   //*[@id="header"]/div[2]/div/div/nav/div[1]/a

Input Email Address to Create Account
    Input Text                      //*[@id="email_create"]                             cha_mae1234@gmail.com
    Click Element                   //*[@id="SubmitCreate"]

Create User Account
    # User's Personal Information
    Click Element                   //*[@id="id_gender1"]
    Input Text                      //*[@id="customer_firstname"]                       Marvin
    Input Text                      //*[@id="customer_lastname"]                        Lacupa
    Input Text                      //*[@id="passwd"]                                   password
    Select From List By Value       //*[@id="days"]                                     6
    Select From List By Value       //*[@id="months"]                                   7
    Select From List By Value       //*[@id="years"]                                    1996
    Click Element                   //*[@id="newsletter"]
    Click Element                   //*[@id="optin"]

    # User's Address
    Input Text                      //*[@id="company"]                                  DOST-ASTI
    Input Text                      //*[@id="address1"]                                 UP Diliman
    Input Text                      //*[@id="city"]                                     Quezon City
    Select From List By Value       //*[@id="id_state"]                                 20
    Input Text                      //*[@id="postcode"]                                 01101
    Input Text                      //*[@id="phone_mobile"]                             09125526541
    Input Text                      //*[@id="alias"]                                    Litex QC
    Click Element                   //*[@id="submitAccount"]

Login User
    Input Text                      //*[@id="email"]                                    cha_mae1234@gmail.com
    Input Text                      //*[@id="passwd"]                                   password
    Click Element                   //*[@id="SubmitLogin"]

Select Items and Add Items to Cart
    Mouse Over                      //*[@id="block_top_menu"]/ul/li[1]/a
    Click Element                   //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[2]/a
    Mouse Over                      //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Wait Until Element is Visible   //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
    Click Element                   //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
    Wait Until Element is Visible   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Click Element                   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a

Checkout Items
    Click Element                   //*[@id="center_column"]/p[2]/a[1]
    Click Element                   //*[@id="center_column"]/form/p/button
    Click Element                   //*[@id="cgv"]
    Click Element                   //*[@id="form"]/p/button
    Click Element                   //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    Click Element                   //*[@id="cart_navigation"]/button

Click Signout Navigator
    Click Element                   //*[@id="header"]/div[2]/div/div/nav/div[2]/a
