*** Settings ***
Resource                                     page_bedroom.robot
Library                                      String

*** variables ***
${create_new_bedroom_pg_label}              Create New Bedroom

${descriptionEle}                           id=description
${floorEle}                                 id=floor
${numberEle}                                id=number
${priceDailyEle}                            id=priceDaily
${bedrom_status_ID}                         id=bedroomStatusId
${bedrom_status_ID_submenu}                 xpath=//*[@id='bedroomStatusId']/option[2]
${type_bedroom_ID}                          id=typeBedroomId
${type_bedroom_ID_submenu}                  xpath=//*[@id='typeBedroomId']/option[2]
${save_btn}                                 xpath=.//*[@class="btn btn-primary"]
${succes_message}                           xpath=//*[@id='messagePanel']/table/tbody/tr/td
${show_all_bedroom_btn}                     xpath=//*[@id='j_idt50']/a[2]


*** Keywords ***
perform create new bedroom 
    ${description}=                         Generate Random String    10                            [LOWER]   
    ${floor}=                               Generate Random String    1                             [NUMBERS]
    ${number}=                              Generate Random String    3                             [NUMBERS]
    ${priceDaily}=                          Generate Random String    4                             [NUMBERS]
         
    Input Text                              ${descriptionEle}                   ${description}
    Input Text                              ${floorEle}                         ${floor}
    Input Text                              ${numberEle}                        ${number}
    Input Text                              ${priceDailyEle}                    ${priceDaily}
    
    click element                           ${bedrom_status_ID}
    click element                           ${bedrom_status_ID_submenu}
    click element                           ${type_bedroom_ID} 
    click element                           ${type_bedroom_ID_submenu}
    click element                           ${save_btn}
    Element Text Should Be                  ${succes_message}                   Bedroom was successfully created.
