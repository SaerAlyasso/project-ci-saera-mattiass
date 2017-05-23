*** Settings ***
Library                              Selenium2Library
Library                              OperatingSystem
Resource                             ./pages-and-keywords/test_setup_and_teardown.robot
Resource                             ./pages-and-keywords/page_login.robot
Resource                             ./pages-and-keywords/page_dashboard.robot
Resource                             ./pages-and-keywords/page_bedroom.robot
Resource                             ./pages-and-keywords/page_client.robot
Resource                             ./pages-and-keywords/page_create_new_bedroom.robot
Resource                             ./pages-and-keywords/page_reservation.robot
Resource                             ./pages-and-keywords/page_create_client.robot
Resource                             ./pages-and-keywords/page_create_bill.robot
Resource                             ./pages-and-keywords/page_bill.robot
Resource                             ./pages-and-keywords/page_view_bedroom.robot

Test setup                          Setup  
Test teardown                       Teardown 

*** Test cases***
Test create new bedroom
    login into the system
    perform nav bedroom   
    perform nav to create new bedroom 
    perform create new bedroom 
    
    
    
Test delete last bedroom 
    login into the system
    perform nav bedroom   
    perform nav to create new bedroom 
    perform create new bedroom 
    perform nav bedroom
    perform delete last bedroom
    
  
Test index button on hotel reservation 
    login into the system
    perform nav reservation
    perform nav index button hotal reservation   
    
Test create new client
    login into the system
    perform nav client
    perform nav to create new client
    perform create new client
    
Test delete last client
    login into the system
    perform nav client
    perform nav to create new client
    perform create new client
    perform nav client
    perform delete last client in list
    
 Test create new bill
     login into the system
     perform nav bill
     perform nav to create new bill
     perform create new bill
     perform delete from view
    
 
 Test delete last bill from list
     login into the system
     perform nav bill
     perform nav to create new bill
     perform create new bill
     perform nav bill
     perform delete last bill from list
     
 Test View first bedroom in list
     login into the system
     perform nav bedroom 
     perform nav to create new bedroom 
     perform create new bedroom 
     perform nav bedroom
     perform "View" first bedroom in list 
     compare bedroom info

Test Delete first bedroom from list in View
     login into the system
     perform nav bedroom 
     perform nav to create new bedroom 
     perform create new bedroom 
     perform nav bedroom
     perform "View" first bedroom in list 
     compare bedroom info
     perform delete bedroom from view
     
Test logout 
    login into the system
    perform logout
     
 