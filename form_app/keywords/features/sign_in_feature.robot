*** Keywords ***
Sign in with http
    sign_in_page.Tap email input text
    sign_in_page.Input email             ${user.email}
    sign_in_page.Tap password input text
    sign_in_page.Input password          ${user.password}
    sign_in_page.Tap sign in button
    sign_in_page.Capture unable popup
    sign_in_page.Tap unable sign in popup 