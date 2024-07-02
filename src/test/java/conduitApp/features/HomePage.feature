Feature: Tests for the HomePage

Background: Define url
    Given url apiUrl

Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags == '#array'
    And match each response.tags == '#string'
    And match response.tags contains 'Git'

Scenario: Get 10 articles per page
    Given params { limit: 10, offset: 0 }
    Given path 'articles'
    When method Get
    Then status 200
    And match response.articles == '#[10]'
    And match response.articlesCount == 10