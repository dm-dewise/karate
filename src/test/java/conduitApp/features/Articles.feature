Feature: Create article

Background: Define url
    Given url apiUrl                 

Scenario: Create and delete article               
    Given path 'articles'
    And request
    """
        {
            "article":{
                "title":"Karate 101",
                "description":"Karate test",
                "body":"A quick brown fox jumped over the lazy dog.",
                "tagList":["Test"]
            }
        }
    """
    When method Post
    Then status 201
    And match response.article.title == 'Karate 101'  
    * def articleId = response.article.slug    
   
    Given path 'articles', articleId
    When method Delete
    Then status 204