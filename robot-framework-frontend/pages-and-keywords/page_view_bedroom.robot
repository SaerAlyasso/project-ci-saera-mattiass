*** Settings ***
Resource                                     page_bedroom.robot
Library                                      String

*** variables ***

${descriptionInfo}                             xpath=.//span[@title="Description"]
${delete_btn_From_view}                        xpath=.//*[@id='j_idt51']/a[1]


*** keywords ***
compare bedroom info
    Wait Until Page Contains Element           ${descriptionInfo}
    Element Text Should Be                     ${descriptionInfo}            ${DescriptionFirstBedroomInList}
 
 
perform delete bedroom from view
    Wait Until Page Contains Element           ${delete_btn_From_view} 
    click element                              ${delete_btn_From_view} 
    Element Text Should Be                     ${message}                        Bedroom was successfully deleted. 