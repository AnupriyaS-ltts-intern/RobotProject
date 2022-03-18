*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306

Suite Teardown   Disconnect From Database

*** Test Cases ***
TC1
    Table Must Exist     Products
    ${count}     Row Count     select * from Products
    Log To Console     ${count}

TC2
    Row Count Is Equal To X     select * from Products where product_id=10     1
    Row Count Is Greater Than X     select * from Products     10
    Row Count Is Less Than X     select * from Products     100

TC3
    #Execute Sql String     Insert into Products (product_id,productname,description) values (1033,'Anupriya','name')
    #Row Count Is Equal To X     select * from Products where product_id=1033     1

TC4
    #use keyword query to get the select statement output as list
    #https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html
    @{output}     Query     select * from Products 
    Log To Console     ${output}
    Log To Console     ${output}[0]

TC5
    #update query - "Execute Sql String"
    Execute Sql String    update Products set productname='Anu' where product_id=1033
    @{output}     Query    select * from Products where product_id=1033
    Log To Console    @{output}

TC6
    @{output}     Query    select * from Products where product_id=1023
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[0][1]



