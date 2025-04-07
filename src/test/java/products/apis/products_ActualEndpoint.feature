Feature: CRUD Operations with DummyJSON API

  Background:
    * url 'https://dummyjson.com'

#  Scenario: GET all products
#    Given path 'products'
#    When method get
#    Then status 200
#    And match response.products[0].id != null

  Scenario: GET a single product by ID
    Given path 'products', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.title != null

#  Scenario: POST - Add a new product
#    Given path 'products/add'
#    And request
#      """
#      {
#        "title": "Karate Test Product",
#        "description": "This is a product created via Karate test",
#        "price": 199,
#        "brand": "KarateBrand"
#      }
#      """
#    When method post
#    Then status 201
#    And match response.title == "Karate Test Product"
#    * def newProductId = response.id
#
#  Scenario: PUT - Update the product
#    Given path 'products'
#    When method get
#    Then status 200
#    * def productId = response.products[0].id
#
#    Given path 'products', productId
#    And request
#      """
#      {
#        "title": "Updated Karate Product",
#        "price": 299
#      }
#      """
#    When method put
#    Then status 200
#    And match response.title == "Updated Karate Product"
#    And match response.price == 299
#
#  Scenario: DELETE - Delete the product
#    Given path 'products'
#    When method get
#    Then status 200
#    * def productId = response.products[0].id
#
#    Given path 'products', productId
#    When method delete
#    Then status 200
#    And match response.isDeleted == true