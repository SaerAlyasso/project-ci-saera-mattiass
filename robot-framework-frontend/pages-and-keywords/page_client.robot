*** Settings ***
Resource                                     page_login.robot

*** variables ***

${create_new_client_button}               xpath=//*[@id='j_idt50']/a[1]
#${client_delete_btn}                      xpath=//*[@id='j_idt50']/table/tbody/tr[5]/td[7]/a[3]
${client_pg_creation}                     Client was successfully created.
${client_pg_label_delete}                 Client was successfully deleted.

*** Keywords ***
perform nav to create new client    
    Wait Until Page Contains Element           ${create_new_client_button}
    click element                              ${create_new_client_button}

perform delete last client in list
    #We couldnt find a way to make this xpath to variables 
    ${count}=                                  Get Matching Xpath Count          xpath=.//*[@class="table table-responsive table-bordered"]/tbody/tr               
    #We couldnt find a way to make this xpath to variables and pass a dynamic variable inside 
    ${client_delete_btn}                      Get Webelement                    xpath=.//*[@id='j_idt50']/table/tbody/tr[${count}]/td[7]/a[3]  
    Wait Until Page Contains Element           ${client_delete_btn}              
    click element                              ${client_delete_btn}
    wait until page contains                   ${client_pg_label_delete}         
    Element Text Should Be                     ${message}                        Client was successfully deleted.               