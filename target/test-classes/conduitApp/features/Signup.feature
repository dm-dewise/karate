Feature: Create new user or sign up

    Background: Preconditions
        Given url apiUrl
    
#     Scenario: test sign up flow
#         * def userdata = {"email": "dbmigrino@gmail.com", "username": "dbmigrino"}
#         Given path 'users'
#         And request 
#         """
#             {
#                 "user": {
#                     "email": "#(userdata.email)", 
#                     "password": "warewolf90", 
#                     "username": "#(userdata.username)"
#                 }
#             }
#         """
#         When method Post
#         Then status 201