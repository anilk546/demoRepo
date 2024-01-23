Feature: The karate framework

  Scenario: get request
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response

  Scenario: second request
    given url 'https://reqres.in/api/users?page=2'
    when method GET
    then print response