*** Settings ***
Resource                                     page_login.robot

*** variables ***
${bedroom_pg_label}                        List


${create_new_Bedroom_button}               xpath=//a[@class="btn btn-primary"]
${delete_btn}                              xpath=.//*[@id='j_idt50']/table/tbody/tr[7]/td[8]/a[3]
${message}                                 id=messagePanel

*** Keywords ***
perform nav to create new bedroom     
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    click element                              ${create_new_Bedroom_button}

perform delete bedroom
    Wait Until Page Contains Element           ${delete_btn}
    click element                              ${delete_btn}
    Element Text Should Be                     ${message}                        Bedroom was successfully deleted. 
    
perform find element
    Wait Until Page Contains Element           ${create_new_Bedroom_button}
    