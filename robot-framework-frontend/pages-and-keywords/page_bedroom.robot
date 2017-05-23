*** Settings ***
Resource                                     page_login.robot

*** variables ***
${bedroom_pg_label}                        List                                   

${create_new_Bedroom_button}               xpath=//a[@class="btn btn-primary"]
#${delete_btn_Bedroom}                      xpath=.//*[@id='j_idt50']/table/tbody/tr[${count}]/td[8]/a[3]
${message}                                 id=messagePanel
${view_btn}                                xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[8]/a[1]
${description}                             xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[2]
${bedroom_table}                           xpath=.//*[@class="table table-responsive table-bordered"]/tbody/tr 

*** Keywords ***
perform nav to create new bedroom     
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    click element                              ${create_new_Bedroom_button}

perform delete last bedroom
    #We couldnt find a way to make this xpath to variables 
    ${count}=                                  Get Matching Xpath Count          xpath=.//*[@class="table table-responsive table-bordered"]/tbody/tr               
    #We couldnt find a way to make this xpath to variables and pass a dynamic variable inside 
    ${delete_btn_Bedroom}                      Get Webelement                    xpath=.//*[@id='j_idt50']/table/tbody/tr[${count}]/td[8]/a[3]
    click element                              ${delete_btn_Bedroom}                    
    Element Text Should Be                     ${message}                        Bedroom was successfully deleted. 
    
perform find element
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    
perform "View" first bedroom in list    
    Wait Until Page Contains Element           ${description} 
    ${DescriptionFirstBedroomInList}           Get Text             ${description} 
    Set Global Variable                        ${DescriptionFirstBedroomInList} 
    click element                              ${view_btn}
    
    