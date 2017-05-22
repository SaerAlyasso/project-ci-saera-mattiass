*** Settings ***

*** variables ***
${reservation_pg_label}                            List

${create_new_reservation}                      xpath=//*[@id='j_idt50']/a[1]
${edit_reservation}                            xpath=//*[@id='j_idt50']/table/tbody/tr[1]/td[8]/a[2]
${delete_btn}                                  xpath=//*[@id='j_idt50']/table/tbody/tr[1]/td[8]/a[2]
${message}                                     id=j_idt49:messagePanel
${res_index_}                                  xpath=//*[@id='j_idt50']/a[2]


*** Keywords ***
perform nav edit reservation     
    Wait Until Page Contains Element           ${edit_reservation}
    click element                              ${edit_reservation}
    Title Should be                            ${create_hotel_reservation_pg_label}

perform nav create hotal reservation     
    Wait Until Page Contains Element           ${create_new_reservation}
    click element                              ${create_new_reservation}
    Title Should be                            ${create_hotel_reservation_pg_label}
 
 
perform nav index button hotal reservation     
    Wait Until Page Contains Element           ${res_index_} 
    click element                              ${res_index_} 
    Title Should be                            ${dashboard_pg_label_dashboard}
              