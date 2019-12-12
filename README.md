This script is created using Robot Framework and PyCharm IDE as Automation tool.

File:

CentralizeSuite.robot
  - Consists of keywords that can be called and used in TestCasesSuite.robot or any test suite.
  
TestCasesSuite.robot
  - Consists of test cases that would be executed upon running of test scripts.
  - Keywords under CentralizedSuite.robot are called in this suite.

Installation of Robot Framework
 - Download and Install Python version 3
 - Install Robot Framework using "pip install robotframework-selenium2library"

Installation and Configuration of PyCharm IDE
  - Download and install latest version of PyCharm IDE
  - Install Intellibot and Robot Framework Support in PyCharm Plugins
  
Tested and Automated Modules of http://automationpractice.com/index.php web application.
  - User Registration
  - User Login
  - Add To Cart
  - Payment Checkout
  - Logout
  
Run the script using the command on your terminal
  
  robot TestCasesSuite.robot
