*** Keywords ***
Tap email input text
    common.Tap when ready  ${email_input}

Input email
    [Arguments]     ${email}
    AppiumLibrary.Input Text      ${email_input}      ${email}

Tap password input text
    common.Tap when ready  ${password_input}

Input password
    [Arguments]     ${password}
    AppiumLibrary.Input Text     ${password_input}      ${password}

Tap sign in button
    common.Tap when ready  ${sign_in_btn}

Capture unable popup
    common.Capture page    unable_signin.png

Tap unable sign in popup 
    common.Tap when ready  ${unable_popup_ok_btn}