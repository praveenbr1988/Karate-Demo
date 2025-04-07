Feature: Mock DummyJSON API

  Scenario: pathMatches('/products/1') && methodIs('GET')
    * def response =
      """
      {
        "id": 1,
        "title": "Mocked Product",
        "description": "This is a mocked product response",
        "price": 123,
        "brand": "MockBrand"
      }
      """
    * def status = 200
