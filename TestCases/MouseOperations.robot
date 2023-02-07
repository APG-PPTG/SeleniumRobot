*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Actions
    # Right Click operation
    Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    Open Context Menu   xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    go to   https://practicetestautomation.com/blog/
    Maximize Browser Window
    #Double Click Element

     go to  http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
     Drag And Drop    id:box6   id:box106
     Sleep    5
