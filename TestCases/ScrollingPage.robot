*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Sleep    3
    Execute Javascript    window.scrollTo(0,1500)
    Sleep    3
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[2]
    Sleep    3
    # Scroll to End of page
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight
    Sleep    3
    # Scroll to Top of page
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight
