*** Settings ***
Resource                                       ../credentials/environment_variables.robot

*** Keywords ***
Setup
    Set Environment Variable                   ${driver_name}                                          ${chromedriver_location}    
    Open Browser                               ${base_url}                                              browser=${chrome_browser} 
    Maximize Browser Window  
    Set Selenium Speed                         .2
    Set Selenium Timeout                       30
    Delete All Cookies
    #Wait Until Page Contains                  Login    
    Location Should be                         ${base_url}  
    #Title Should be                           Hotel Accomodation - login page                        
   
Teardown    
    Close All Browsers 