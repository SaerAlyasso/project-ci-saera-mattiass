*** Settings ***
Resource                                     page_login.robot

*** variables ***
${bedroom_pg_label}                        List                                   
${count}

${create_new_Bedroom_button}               xpath=//a[@class="btn btn-primary"]
${delete_btn}                              xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[8]/a[3]
${message}                                 id=messagePanel
${view_btn}                                xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[8]/a[1]
${description}                             xpath=.//*[@id='j_idt50']/table/tbody/tr[1]/td[2]

*** Keywords ***
perform nav to create new bedroom     
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    click element                              ${create_new_Bedroom_button}

perform delete bedroom
    click element                              ${delete_btn}                     
    Element Text Should Be                     ${message}                        Bedroom was successfully deleted. 
    
perform find element
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    
perform "View" first bedroom in list    
    Wait Until Page Contains Element           ${description} 
    ${DescriptionFirstBedroomInList}           Get Text             ${description} 
    Set Global Variable                        ${DescriptionFirstBedroomInList} 
    click element                              ${view_btn}
    
    