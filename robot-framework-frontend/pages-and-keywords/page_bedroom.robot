*** Settings ***
Resource                                     page_login.robot

*** variables ***
${bedroom_pg_label}                        List                                   
${count}
${create_new_Bedroom_button}               xpath=//a[@class="btn btn-primary"]
${delete_btn}                              xpath=.//td[text()= 'wnbafpmlzn']/a[3]
${message}                                 id=messagePanel

*** Keywords ***
perform nav to create new bedroom     
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    click element                              ${create_new_Bedroom_button}

perform delete bedroom
    
    ${count}=                                   Get matching Xpath Count   .//*[@id='j_idt50']/table/tbody/tr
    Log to console            ${count}
    #Set Global Variable        ${count} 
   # ${delete_btn}=                              xpath=.//*[@id='j_idt50']/table/tbody/tr[contains(text(),'wnbafpmlzn']/td[8]/a[3] 
    Wait Until Page Contains Element           ${delete_btn}
    
    click element                              ${delete_btn}                     
    Element Text Should Be                     ${message}                        Bedroom was successfully deleted. 
    
perform find element
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    