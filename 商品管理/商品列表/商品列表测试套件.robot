*** Settings ***
Library           Collections
Library           Screenshot
Library           SeleniumLibrary

*** Test Cases ***
常用关键字
    log    马上学院
    ${a}    Set Variable    100
    Log    ${a}
    ${time}    Get Time
    Log    ${time}
    # 字符串拼接
    ${str}    Catenate    SEPARATOR=#    百里    星耀    微微
    Log    ${str}
    #创建列表
    ${list}    Create List    百里    星耀    微微
    Log    ${list}
    @{list}    Create List    百里    星耀    微微
    Log Many    @{list}    #便于循环
    #字典关键字
    ${dic}    Create Dictionary    name=百里    age=38
    Log    ${dic}
    #获取字典所有的key
    ${keys}    Get Dictionary Keys    ${dic}
    Log    ${keys}
    #获取字典所有的value
    ${values}    Get Dictionary Values    ${dic}
    Log    ${values}
    #通过key获取value
    ${values}    Get Dictionary Items    ${dic}    name
    Log    ${values}

复杂关键字
    # 执行python方法
    ${rand}    Evaluate    random.randint(1,101)    modules=random
    Log    ${rand}
    ${time}    Evaluate    time.time()    modules=time
    Log    ${time}
    Import Library    E:/Work/LearnPython/RobotFramework/esshop/test.py
    ${x}    Evaluate    int(10)
    ${y}    Evaluate    int(20)
    ${result}    sum    ${x}    ${y}
    Log    ${result}
    ## 流程控制if
    ${a}    Set Variable    86
    Run Keyword If    ${a}<60    Log    不及格
    ...    ELSE IF    ${a}<80    Log    一般
    ...    ELSE    Log    优秀
    ##流程控制for写法1
    FOR ${a} IN apple    oracle    banana
    Log    ${a}
    END
    ##流程控制for写法2
    @{list}    Create List    apple    oracle    banana
    FOR ${a} IN @{list}
    Log    ${a}
    END
    ##流程控制for写法3
    FOR ${a} IN RANGE    1    11
    Run Keyword If    ${a}==6    Exit For Loop
    Log    ${a}
    END
    #截图
    Take Screenshot
