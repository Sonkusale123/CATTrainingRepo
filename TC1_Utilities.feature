Feature: My Feature
Background:
Given I assign "CAT" to variable "v1"
Then I assign "40" to variable "v2"


Scenario: Welcome Team
Given I echo "Welcome to CAT"



@variables
Scenario: Access variables
Given I echo $v1
And I assign variable "v1" by combining $v1 "Training"
And I echo $v2

When I prompt "Enter Number" and assign user response to variable "v3"
and I echo $v3

When I convert string variable "v2" to INTEGER variable "v2"
And I echo $v2

@Notepad
Scenario:Open Notepad

Then I press keys "CTRL+ESC"
and I wait 7 seconds
When I enter "notepad"
And I wait 7 seconds
and I press keys Enter
and I wait  7 seconds
Then I press keys "ALT+F4"









@outline
Scenario Outline : Read Data from CSV
CSV Examples: Datasets\data.csv
Given I echo <num1>
if i verify number <num1> is equal to <num2>
  then i echo "Both numbers are same"
  Else i echo "Not same"
  EndIf
  
 And I assign all chevron variables to dollar variables
 And I assign chevron variables "num1,num2" to dollar variables
 
@outline2
 Scenario Outline: Scenario outline name 
 Given I echo <name>
 And I echo <password>
 Examples:
 | name | password |
 | "s1" | "p1"|
 | "s2" | "p2"|
 
 
 
@triple
 Scenario: print in double quotes
 Given I assign """"Hello"""" to variable "str"
 And I echo $str
 

 When I execute Groovy "res=v1+v2"
Then I echo $res

@web
Scenario:open chrome
Given I open "chrome" web browser
Then I navigate to "https://www.google.com/" in web browser
And I maximize web browser
And I wait 5 seconds
When I type "Hello World" in element "xPath://input[@name='q']" in web browser within 5 seconds
And I wait 5 seconds
And I close web browser


@table
Scenario: handle table
Given I open "chrome" web browser
Then I maximize web browser
Then I navigate to "https://money.rediff.com/gainers/bse/daily/groupa?src=gain_lose" in web browser
Once I see "Top Gainers" in web browser
Then I copy value in row "2" column "3" in table "xPath://table[@class='dataTable']" in web browser as variable "Value"
And I echo $Value


@popup
Scenario: handling pop up
Given I open "chrome" web browser
Then I maximize web browser
Then I navigate to "https://www.naukri.com/" in web browser
And I wait 5 seconds
And I switch to "NEXT" tab in web browser
Then I close tab in web browser

@alert
Scenario: handle alert
Given I open "chrome" web browser
Then I maximize web browser
Then I navigate to "https://ksrtc.in/oprs-web/guest/home.do?h=1" in web browser
And I wait 5 seconds
Then I click element "id:corover-close-btn" in web browser
And I click element "xPath://button[@class='btn btn-primary btn-lg btn-block btn-booking']" in web browser
Then I wait 5 seconds
Then I press keys "Enter"
