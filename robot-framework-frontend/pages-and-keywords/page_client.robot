*** Settings ***
Resource                                     page_login.robot

*** variables ***

${create_new_client_button}               xpath=//*[@id='j_idt50']/a[1]
${client_delete_btn}                      xpath=//*[@id='j_idt50']/table/tbody/tr[5]/td[7]/a[3]
${client_pg_creation}                     Client was successfully created.
${client_pg_label_delete}                 Client was successfully deleted.

*** Keywords ***
perform nav to create new client    
    Wait Until Page Contains Element           ${create_new_client_button}
    click element                              ${create_new_client_button}

perform delete client
    Wait Until Page Contains Element           ${client_delete_btn}
    click element                              ${client_delete_btn}
    wait until page contains                   ${client_pg_label_delete}                       