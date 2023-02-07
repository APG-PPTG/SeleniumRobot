*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database pymysql ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
Create person table
    ${output}=  Execute Sql Script    Create table person(id integer,first_name varchar(20),last_name varchar(20));
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Inserting Data in person table
    # For Single record insertion
    ${output}=  Execute Sql String    Insert into person values(101,'John', 'Candy');
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None


Inserting Multiple Records in person table
    # For Multiple record insertion
    ${output}=  Execute Sql Script    ./TestData/mydb_person_insertData.sql
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None


# Validating if exist in DB
Check David record present in Person Table
    Check If Exists In Database    select id from mydb.person where first_name="David";

Check Jio record present in Person Table
    Check If Not Exists In Database    select id from mydb.person where first_name="David";

Check Person Table exits in mydb database
    Table Must Exist    personxyz
    
Verify Row count is Zero
    Row Count Is 0  select * from mydb.person where first_name='xyz';

Verify Row Count is Equal to Expected Value
    Row Count Is Equal To X    select * from mydb.person where first_name='xyz';    1

Verify Row Count is Greater than Some Value
    Row Count Is Greater Than X    select * from mydb.person where first_name='David';    0

Verify Row Count is less than Some Value
    Row Count Is Less Than X    select * from mydb.person where first_name='David';    5

Verify Record is Updated in Person Table
    ${output}=  Execute Sql String    Update mydb.person set first_name="Jio" where id=104;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Retrieve Resorce from Person Table
    @{queryResults}=    Query    Select * from mydb.person;
    Log To Console  many    @{queryResults}
    
Delete Records from Person Table
    ${output}=  Execute Sql String    Delete from mydb.person;
    Should Be Equal As Strings    ${output}    None