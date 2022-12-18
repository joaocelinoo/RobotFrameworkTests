*Settings *
Documentation       Actions para os tests de login na página Ultimate QA

Resource            ${EXECDIR}/base/base.robot
Library    String

* Variables *
${HOME-PAGE}    //*[@class='android.widget.TextView']
${NEW_PRODUCT_BUTTON}     //android.widget.Button[@resource-id='br.com.pztec.estoque:id/Button1']
${SAVE_PRODUCT}    id=br.com.pztec.estoque:id/btn_gravar_assunto
${PRODUCTS_HOME_PAGE}    //android.widget.LinearLayout[@resource-id='br.com.pztec.estoque:id/linha_parte1']    

* Keywords *

The app is accessed successfully
    Wait Until Element Is Visible    ${HOME-PAGE}

I click on New Button
    Click Element      ${NEW_PRODUCT_BUTTON}    

I fill the form
    Input Text    //*[@resource-id='br.com.pztec.estoque:id/txt_codigo']                  Test Code Product
    Input Text    //*[@resource-id='br.com.pztec.estoque:id/txt_descricao']               Test Description Product
    Input Text    //*[@resource-id='br.com.pztec.estoque:id/txt_quantidade']              10
    Input Text    //*[@resource-id='br.com.pztec.estoque:id/txt_valunit']                 10
    Input Text    //*[@resource-id='br.com.pztec.estoque:id/txt_lote']                    Teste Product

I click save
    Click Element    ${SAVE_PRODUCT}

The system will show the new record created on the home page
    Wait Until Element Is Visible    ${PRODUCTS_HOME_PAGE}
    ${COUNT_PRODUCTSNEW}    Get Matching Xpath Count    ${PRODUCTS_HOME_PAGE}    
    Should Be Equal    ${COUNT_PRODUCTSNEW}    1

I create a new product
    I click on New Button
    I fill the form
    I click save

The system will show the second new record created on the home page
    Wait Until Element Is Visible    ${PRODUCTS_HOME_PAGE}
    ${COUNT_PRODUCTSNEW}    Get Matching Xpath Count    ${PRODUCTS_HOME_PAGE}    
    Should Be Equal    ${COUNT_PRODUCTSNEW}    2