Feature: My

Background:


@cvs
Scenario Outline: Read Data from  csv
CSV Examples: Datasets\data.csv
given i echo <num1>
If I verify number <num1> is equal to <num2>
Then I echo "both no. are same"
Else I echo "not same"
EndIf
And I assign chevron variables "num1,num2" to dollar variables
Then I echo $num1
And I echo $num2
And I execute scenario "assign variabes"


@wip
Scenario: assign variabes
Given I assign 20 to variable "v1"
And I assign 50 to variable "v2"
And I assign "CAT" to variable "v3"
And I echo $v1
And I echo $v2
And I echo $v3





@tag4
Scenario Outline: Scenario Outline Name
Given I assign <username> to variable "USER_NAME"
Given I assign <password> to variable "PASS_Word"
Then I echo $USER_NAME
Then I echo $PASS_Word



Examples:
| username|password|
|"NEHA.THAKRE"| "NT@123"|


