*** Settings ***
Resource                                     page_login.robot

*** variables ***

${create_new_bill_button}               xpath=//*[@id='j_idt50']/a[1]
${bill_delete_btn}                      xpath=//*[@id='j_idt50']/table/tbody/tr[4]/td[7]/a[3]
${bill_pg_creation}                     Bill was successfully created. 
${bill_pg_label_delete}                 Bill was successfully deleted. 

*** Keywords ***
perform nav to create new bill   
    Wait Until Page Contains Element           ${create_new_bill_button}
    click element                              ${create_new_bill_button}

perform delete bill
    Wait Until Page Contains Element           ${bill_delete_btn}
    click element                              ${bill_delete_btn}
    Wait Until Page Contains                   ${bill_pg_label_delete}                        