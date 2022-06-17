Feature: My Feature

Background: 
Given I import scenarios from "D:\Project1\Project1.cycproj.feature"





Scenario:
Given "Login to gmail"
Then I execute scenario "Login to gmail"
Then I execute scenario "Send Mail"


@while
Scenario: while 
Given I assign 20 to variable "v1"
Then I assign 40 to variable "v2"

While I verify number $v1 is less than 40
Then I echo $v1
And I increase variable "v1" by 5
EndWhile


@file
Scenario: write data to file
Given I "Write to file"
Given I assign "Datasets\file1.csv" to variable "filepath"
If I verify file $filepath exists
Then I echo "File is present"
Else I create file "Datasets\file1.csv"
EndIf 
Once I create file "Datasets\file1.csv"
Then I append "CAT Training" to end of file "Datasets\file1.csv"
And I append "Write data to file" to end of file "Datasets\file1.csv"


@list
Scenario: List Creation
Given I create list "Fruits"
And I append element "Mango" to list "Fruits"
And I prepend element "Appple" to list "Fruits"
And I echo $Fruits
And I sort list "Fruits"
And I echo $Fruits


@scenariooutlinewithout_csv
Scenario Outline: without_csv
Given I assign <Animal> to variable "Ani_mal"
Given I assign <Plant> to variable "Pla_nt"
Then I echo $Ani_mal
Then I echo $Pla_nt

Examples:
|Animal|Plant|
|"Tiger"|"Lotus"




