*** Variables ***
${browser}       firefox
${website}       http://dev.www.engage360.evacompute.com:8080/
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-28
${Total_Opened}             id=repairPage_Image
${Dinning}                  id=SideNav_Menu_Repairs
${Add Menu Item}            id=dining_new_dining_btn
${dining_title}             id=add_dining_title
${dining_description}       id=add_dining_description
${image}                    name=image_url
${Search}                   id=dining_search_icon
${tags}                     id=add_dining_tags
${Hide_Print}               id=dining_hideOnPrinting_switch
${Start-Date}               id=add_dining_start_date

${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${Does_Not_Repeat}          id=RepeatValue-option-0
${Recurre_Monthly}          id=RepeatValue-option-3
${CancelBtnRecc}            id=cancelRecurrence
${Tab_Repeats}              id=RepeatValue
${On_this_date}             EndSelection-option-1
${Weekly_Recurrence}        id=RepeatValueWeekly
${modify_day}               id=RepeatInterval
${modify_Occurrences}       id=OccurrencesField
${SaveRecurrence}           id=saveRecurrenceObj
${Save_btn}                 id=add_dining_save_btn
${Message_Accept}           id=alert_AddDining_Success
${DONE}                     id=done_btn
${Delete_Dinning}           id=add_dining_delete_btn
${Delete_All_Recurrence}    id=close_repair_close_btn
${Text_Image}               id=id_dining_header_list_image
${text Menu Item}           id=id_dining_header_list_menu_item
${Menu_Items}               dining_title
${Button No,Exit}           id=close_repair_return_btn
${Menu Item}                id=menu_item_deletetion_modal
${Icon_Meal}                id=id_dining_header_list_meal
${Date_Served}              id=id_dining_header_list_date_serve
${Delete_Occurrence}        id=close_repair_close_btn
${Log_Print}                id=dining_print_icon
${Date Served}              id=id_dining_header_list_date_serve
${right_arrow}              id=scheduler_right_arrow
${left_arrow}               id=scheduler_left_arrow
${Print_Close}               //div[contains(text(),'X')]
${French}                    id=full-width-dining-tab-1
${Spanish}                   id=full-width-dining-tab-1
${Lenguage_OK}               //div[contains(text(),'Ok')]
${Simbol_on_day}             name=radio-btn_onD
${Simbol_on_day2}            name=radio-btn_onT
${PositionSelect}            id=OrdinalPositionSelect
${Select_Fourth}             OrdinalPositionSelect-option-3
${Date_Select}               id=MonthlyWeekDatSelect
${Select_Saturday}           MonthlyWeekDatSelect-option-6
${Month_Recu_Window}         //body/div[3]/div[3]/div[1]/div[2]/div[1]/div[7]/div[1]
${Month_Recu_Window1}        //div[contains(text(),'Occurs day 15 of every 3 months starting October')]

${Print_Close}               //div[contains(text(),'X')]
${Log_Print}                id=dining_print_icon
${Button_SelectAll}         id=addEditDevice_Headers_SelectAll
${Search_Button}            id=search_btn
${clear_search}             id=dinings_clear_btn
${delete_multiple}          id=delete_multiple_dinings
${delete_Yes}               //div[contains(text(),'Yes, Delete')]
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${advance_month}            id=calendarHeader_rightArrow
${back_month}               id=calendarHeader_leftArrow
${Calendar_Recurrences}     id=Calendar_Btn_undefined_EndDate
${Last30Days}               id=scheduler_switch_two_options_LeftOption
${Last7Days}                id=scheduler_switch_two_options_RightOption
${Add_translations}          //*[@id="root"]/div[1]/div/div/main/div[2]/div/main/div/div/form/button
${sept22}                   document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[25].click()
${sept27}                   document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[30].click()
${oct28}                    document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[33].click()
${oct10}                    document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[15].click()