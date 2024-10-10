*** Variables ***
${email_input}          xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${password_input}       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${sign_in_btn}          accessibility_id=Sign in
${unable_popup}         accessibility_id=Unable to sign in.
${unable_popup_ok_btn}  accessibility_id=OK