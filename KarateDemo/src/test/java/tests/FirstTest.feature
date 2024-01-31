Feature: The karate framework

  Scenario: get request
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    Given expectedResult = read('');
    And Match response == expectedResult
    And Match response.ad.url == ""
    And Match response.data.first_name=""


  Scenario: second request
    given url 'https://reqres.in/api/users?page=2'
    when method GET
    then print response
    
Scenario: Post request
Give url ''
And request '{}'
then method POST
and status '201'


Scenario: post request using json
Given url ''
Given requestBody = read('');
And request requestBody
When method POST
Then status '201'
And status '201'