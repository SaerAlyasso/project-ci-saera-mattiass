***settings***
Resource                                     page_bill.robot
Library                                      String

***variables***
${bill_pg_dropdown_bill_status}              xpath=//*[@id='billStatusId']
${bill_pg_dropdown_hotel_reservation}        xpath=//*[@id='hotelReservationId']
${bill_pg_button_save}                       xpath=//*[@id='saveBtn']
${bill_pg_label}                             Create New Bill
${succes_message_bill}                       id=messagePanel
${delete_btn_bill}                           xpath=.//*[@id='j_idt51']/a[1]
***keywords***
perform create new bill
    
    ${random_bill_status}                    generate random string   1        123
    #we hard code random reservation becouse we cant create a reservation so we use the existing ones in our database
    ${random_hotel_reservation}              generate random string   1        37

   #${random_bill_status}         Evaluate     random.sample(range(2,4)1)   random
   #${random_hotel_reservation}   Evaluate      random.sample(range(2,6)1)   random  
   
   Wait Until Page Contains                  ${bill_pg_label}
   Select From List                          ${bill_pg_dropdown_bill_status}              ${random_bill_status}
   Select From List                          ${bill_pg_dropdown_hotel_reservation}        ${random_hotel_reservation}
   click element                             ${bill_pg_button_save}
   Element Text Should Be                    ${succes_message_bill}                       Bill was successfully created.
   
   
perform delete from view
   click element                             ${delete_btn_bill}
   Element Text Should Be                    ${succes_message_bill}                       Bill was successfully deleted.
   