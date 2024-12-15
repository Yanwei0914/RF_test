*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
常用关键字
    #打开浏览器并加载网页
    Open Browser    https://www.baidu.com    chrome
    #设置隐式等待
    Set Browser Implicit Wait    3
    Sleep    2
    #设置浏览器最大化
    Maximize Browser Window
    Sleep    2
    #制定浏览器的宽度和高度
    Set Window Size    800    600
    Sleep    2
    #获得浏览器的宽度和高度
    ${width}    ${height}    Get Window Size
    Sleep    2
    #回退
    Go Back
    Sleep    2
    #前进
    Go To    https://www.baidu.com
    Sleep    2
    #刷新
    Reload Page
    Sleep    2
    #获取标题
    ${title}    Get Title
    Sleep    2
    #获得浏览器地址
    ${location}    Get Location
    Sleep    2
    #关闭浏览器
    Close Browser

元素定位
    Open Browser    https://www.baidu.com    chrome
    Set Browser Implicit Wait    3
    Input Text    name=wd    码尚学院
    Click Element    id=su
    Sleep    3
    Close Browser

link链接文本
    Open Browser    https://www.baidu.com    chrome
    Set Browser Implicit Wait    3
    Click Element    link=新闻
    Sleep    3
    Close Browser

xpath定位
    Open Browser    https://www.baidu.com    chrome
    Set Browser Implicit Wait    3
    Input Text    xpath=//input[starts-with(@autocomplete,'of')]    码尚学院
    Click Element    id=su
    Sleep    3
    Close Browser

test
    ${a}    Set Variable    100
    Log    ${a}
