Feature: CRUD Operations with DummyJSON API

  Background:
    * url 'http://localhost:8080'

  Scenario: GET a single product by ID
    Given path 'products', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.title != null
