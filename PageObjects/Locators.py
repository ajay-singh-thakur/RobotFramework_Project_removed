# Login Page Locators
import random
import string

text_loginuserName= "xpath://input[@name='txtUsername']"
text_loginPassword= "xpath://input[@name='txtPassword']"
btn_loginbutton=    "xpath://input[@id='btnLogin']"

# Registration Locators
radio_selectGender= "xpath://*[@input='gender-male']"
text_FirstName= "xpath://input[@name='FirstName']"
text_LastName=  "xpath://input[@name='LastName']"
text_EmailID=   "xpath://input[@name='Email']"

text_Password=  "xpath://input[@name='Password']"
text_Confirmpassword=   "xpath://input[@name='ConfirmPassword']"
btn_RegisterButton= "xpath://input[@name='register-button']"


def random_generator(size=8, chars=string.ascii_lowercase + string.digits):
    return ''.join(random.choice(chars) for x in range(size))


EmailID = random_generator() + "@hotmail.com"

