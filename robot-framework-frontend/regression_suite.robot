*** Settings ***
Library                              Selenium2Library
Library                              OperatingSystem
Resource                             ./pages-and-keywords/test_setup_and_teardown.robot
Resource                             ./pages-and-keywords/page_login.robot
Resource                             ./pages-and-keywords/page_dashboard.robot
Resource                             ./pages-and-keywords/page_bedroom.robot
Resource                             ./pages-and-keywords/page_create_new_bedroom.robot
Resource                             ./pages-and-keywords/page_reservation.robot


Test setup                          Setup  
Test teardown                       Teardown 

*** Test cases***
Test create new bedroom
    login into the system
    perform nav bedroom   
    perform nav to create new bedroom 
    perform create new bedroom 
    
    
    
Test delete bedroom 
    login into the system
    perform nav bedroom   
    perform nav to create new bedroom 
    perform create new bedroom 
    perform nav bedroom
    perform delete bedroom
    
  
Test index button on hotel reservation 
    login into the system
    perform nav reservation
    perform nav index button hotal reservation   