*** Settings ***
Resource                                     page_login.robot
Resource                                     page_bedroom.robot
Resource                                     page_bill.robot


*** variables ***
${dashboard_pg_label_dashboard}            Dashboard

${logout_menu}                             xpath=//a[@class='dropdown-toggle']
${logout_submenu}                          xpath=//i[@class='fa fa-sign-out fa-fw']

${bedroom_menu}                            xpath=//i[@class="glyphicon glyphicon-bed fa-fw"]

${bill_menu}                                xpath=//*[@id='side-menu']/li[4]/a

${reservation_menu}                         xpath=//*[@id='side-menu']/li[6]/a


*** Keywords ***
perform logout     
    Wait Until Page Contains Element           ${logout_menu}
    click element                              ${logout_menu}
    Wait Until Page Contains Element           ${logout_submenu}
    click element                              ${logout_submenu}                 
    Wait Until Page Contains                  ${login_pg_label_login}     
    Title Should be                           ${login_pg_title} 


perform nav bedroom 
    Wait Until Page Contains Element           ${bedroom_menu} 
    click element                              ${bedroom_menu} 
    Title Should be                            ${bedroom_pg_label}
    
perform nav bill 
    Wait Until Page Contains Element           ${bill_menu} 
    click element                              ${bill_menu} 
    Title Should be                            ${bill_pg_label}  
    
perform nav reservation 
    Wait Until Page Contains Element           ${reservation_menu} 
    click element                              ${reservation_menu} 
    Title Should be                            ${reservation_pg_label}
    