*** Settings ***
Resource                                     page_login.robot

*** variables ***

${create_new_bill_button}               xpath=//*[@id='j_idt50']/a[1]
#${bill_delete_btn}                      xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[7]/a[3]
${bill_pg_creation}                     Bill was successfully created. 
${bill_pg_label_delete}                 Bill was successfully deleted. 

*** Keywords ***
perform nav to create new bill   
    Wait Until Page Contains Element           ${create_new_bill_button}
    click element                              ${create_new_bill_button}

perform delete last bill from list
    #We couldnt find a way to make this xpath to variables 
    ${count}=                                  Get Matching Xpath Count          xpath=.//*[@class="table table-responsive table-bordered"]/tbody/tr               
    #We couldnt find a way to make this xpath to variables and pass a dynamic variable inside 
    ${bill_delete_btn}                         Get Webelement                    xpath=.//*[@id='j_idt50']/table/tbody/tr[${count}]/td[7]/a[3]  
    Wait Until Page Contains Element           ${bill_delete_btn}
    click element                              ${bill_delete_btn}
    Wait Until Page Contains                   ${bill_pg_label_delete}   
    Element Text Should Be                     ${succes_message_bill}                       Bill was successfully deleted.                    