*** Settings ***
Resource  CentralizedSuite.robot

*** Test Cases ***
# Test Case Name
Creation of User Account
    # Test Scripts
    Launch Browser
    Click Sigin Navigator
    Input Email Address to Create Account
    Create User Account
    Click Signout Navigator

[A] Login Account
    Click Sigin Navigator
    Login User

[B & C] Selection of Items and Adding Items to Cart
    Select Items and Add Items to Cart

[D & E] Checkout for payment option
    Checkout Items
    Click Signout Navigator

