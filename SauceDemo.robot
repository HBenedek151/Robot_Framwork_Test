*** Settings ***
Library    Selenium2Library

*** Test Cases ***
Open saucedemo webpage
    Open Browser    https://www.saucedemo.com/    browser=chrome
    Close Browser

Login with valid credentials
    Open Browser    https://www.saucedemo.com/    browser=Firefox
    Input Text    id=user-name    standard_user
    # Input Text    id=password    secret_sauce
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Page Should Contain Element    id=add-to-cart-sauce-labs-bike-light
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Click Link    class=shopping_cart_link
    Click Button   id=checkout
    Input Text    id=first-name    John
    Input Text    id=last-name    Doe
    Input Text    id=postal-code    12345
    Click Button   id=continue
    Click Button   id=finish
    Page Should Contain Element    id=checkout_complete_container
    Click Button   id=back-to-products
    Close Browser