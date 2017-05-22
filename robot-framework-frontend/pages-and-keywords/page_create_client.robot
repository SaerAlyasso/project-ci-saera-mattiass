***settings***
Resource                                     page_client.robot
Library                                      String

***variables***
${client_pg_textfield_name}             xpath=//*[@id='name']
${client_pg_textfield_email}            xpath=//*[@id='email']
${client_pg_radiobutton}                xpath=//*[@id='gender:0']
${client_pg_social_security_number}     xpath=//*[@id='socialSecurityNumber']
${client_pg_button_save}                xpath=//*[@id='j_idt52']/a[1]
${client_pg_label}                      Create New Client

***keywords***
perform create new client
    
    ${name}                    Generate Random String    7     [LOWER]
    ${email}                   Catenate    SEPARATOR=          ${name}@email.com  
    ${security_number}         Generate Random String    7     [NUMBERS]
    
   input text                 ${client_pg_textfield_name}                 ${name}
   input text                 ${client_pg_textfield_email}                ${email} 
   click element              ${client_pg_radiobutton}  
   input text                 ${client_pg_social_security_number}         ${security_number}
   click element              ${client_pg_button_save}
   wait until page contains   ${client_pg_creation}          
   