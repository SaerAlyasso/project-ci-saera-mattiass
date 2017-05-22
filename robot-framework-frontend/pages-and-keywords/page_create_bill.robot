***settings***
Resource                                     page_bill.robot
Library                                      String

***variables***
${bill_pg_dropdown_bill_status}              xpath=//*[@id='billStatusId']
${bill_pg_dropdown_hotel_reservation}        xpath=//*[@id='hotelReservationId']
${bill_pg_button_save}                       xpath=//*[@id='saveBtn']
${bill_pg_label}                           Create New Bill

***keywords***
perform create new bill
    
    ${random_bill_status}        generate random string   1        123
    ${random_hotel_reservation}        generate random string   1        13758
    log to console        ${random_bill_status} 
    log to console       ${random_hotel_reservation}
   #${random_bill_status}         Evaluate     random.sample(range(2,4)1)   random
   #${random_hotel_reservation}   Evaluate      random.sample(range(2,6)1)   random  
   
   Wait Until Page Contains        ${bill_pg_label}
   Select From List               ${bill_pg_dropdown_bill_status}              ${random_bill_status}
   Select From List               ${bill_pg_dropdown_hotel_reservation}        ${random_hotel_reservation}
   click element                  ${bill_pg_button_save}
   wait until page contains       ${bill_pg_creation}     