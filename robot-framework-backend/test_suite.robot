*** Settings ***
Resource                 ./operations/client_operations.robot
Resource                 ./operations/user_operations.robot

*** Test case ***
    
Test case 1 - Get Specific Client
    Get Specific Clients
  
    
Test case 2 - Delete Last Client
    Delete last Client
    
Test case 3 - Modify Last Client
    Modify Last Client
    
Test case 4 - Get All Users
    Get All Users
    
Test case 5 - Create New User
    Create a New Client  
    Create New User
    
Test case 6 - Get Total Of Users
    Get Total Of Users
    
Test case 7 - Get The ID of The Last User
    Get The ID of The Last User
    
Test case 8 - Get User By ID 
    Get User By ID 

Test case 9 - Delete User By ID
    Delete User By ID
    
Test case 10 - Modify Last User
    Modify Last User
    
    
