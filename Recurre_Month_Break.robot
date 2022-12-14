*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR01 Automation to enter Community Waterford Recurrence Monthly (Breakfast)
        [Tags]      Validation Test       Case 1

# Open Community Waterford Engage360
    scroll element into view             ${Icon_Communities}
    press keys                           ${Icon_Communities}           enter
    click element                        ${Waterford}

# Simulate click Total Opened Window
        wait until element is visible       ${Total_Opened}
        set focus to element                ${Total_Opened}
        element should be visible           ${Total_Opened}      Total Opened
        mouse over                          ${Total_Opened}

#  Enter Dinning Window
       execute javascript              ${Dinning}

# Click Community Waterford
        scroll element into view            ${Community}
        wait until element is visible       ${Community}
        set focus to element                ${Community}
        double click element                ${Community}



# Enter Button Add Menu Item
    execute javascript         ${Add Menu Item}







# complete General Info correctly

# Title
    input text          ${dining_title}      Natural Juice

# Description
    input text          ${dining_description}        carrot, cucumber, tomato, radish juices

# Image
  input text        ${image}       Natural Juice

# click Magnifier search
  click element         ${Search}

# Search Image
  scroll element into view              id=image_1725835
  click element                         id=image_1725835

# Click DONE
   click element       ${DONE}



 # visible the Image (download to image)
   Execute Javascript              window.scrollTo(0,document.body.scrollHeight)

# enter Add translations Window
    click button         ${Add_translations}
# select french language
    click element           ${French}
# select Spanish language
    click element        ${Spanish}

# click Button OK
    click element           ${Lenguage_OK}

 # go up to the identifiers window
   Execute Javascript              window.scrollTo(0,document.body.scrollDown)






# fill the identifiers correctly



# fill the tags field
   scroll element into view            ${tags}

# Text tags
    input text         ${tags}          Nutritious and Delicious
    press keys         ${tags}       ENTER

# Meal Category
# Breakfast
    wait until element is visible       ${Breakfast}


# select Button Hide On Print
    select checkbox     ${Hide_Print}
    unselect checkbox   ${Hide_Print}





# complete Recurrences correctly


 # enter Star Date Calendar
    click element        ${Start-Date}

# Enter Botton Calendar
    press keys             ${Calendar_Btn}      Enter


# Click advance one month
    scroll element into view    ${advance_month}
    double click element       ${advance_month}

# Back One Month
    scroll element into view        ${back_month}
    click element       ${back_month}

# Modify Date New Month and new day
     execute javascript      ${oct23}


# Visible Repets "Does Not Repeat"
   scroll element into view            ${tags}
   mouse down       ${tags}
   click element         ${tags}

# click fill Repeats
   scroll element into view             ${Tab_Repeats}
   click element                        ${Tab_Repeats}

# click Does Not Repeat
   click element          ${Does_Not_Repeat}

# Visible the window Recurrence and the button save inactive

# Modify Every Weeks (increase number of weeks)
   double click element                ${modify_day}
   choose file                         ${modify_day}           10

# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      20

# Click Button Save Inactive
    click element       ${SaveRecurrence}

# enter the On this Date section and modify the day
# click on the END field (inside the Recurrences window)
    click element       id=EndSelection

# Select on this Date
    click element      ${On_this_date}

# enter the recurrences Calendar
    press keys            ${Calendar_Recurrences}     Enter

# Click advance one month
    scroll element into view    ${advance_month}
    double click element        ${advance_month}

# Back One Month
    scroll element into view        ${back_month}
    click element       ${back_month}

## Modify a day in the month
   execute javascript        ${oct25}

# Simulate click Button Save Inactive
   mouse down      ${SaveRecurrence}

# click button Cancel
    scroll element into view            ${CancelBtn}
    wait until element is visible       ${CancelBtn}
    click element                       ${CancelBtn}

# click fill Repeats
   scroll element into view             ${Tab_Repeats}
   click element                        ${Tab_Repeats}

 # enter Star Date Calendar
    click element        ${Start-Date}

#  Save Dinning
   scroll element into view    ${Save_btn}
   element text should be      ${Save_btn}     Save
   click element               ${Save_btn}

# Make the Alert message "This meal has been added succesfully" visible
   wait until element is visible        ${Message_Accept}
   element should be visible            ${Message_Accept}          This meal has been added succesfully

# Reload page to eliminate waiting
    reload page

# enter the capture and modify information enter the capture and modify information and image
    scroll element into view             ${Natural Juice}
    click element                        ${Natural Juice}

 # visible the Image (download to image)
   Execute Javascript              window.scrollTo(0,document.body.scrollHeight)

# Simulate Click in the image
    wait until element is visible       ${image}
    set focus to element                ${image}
    mouse down                          ${image}

 # go up to the Waterford Community Meals Tab
   Execute Javascript              window.scrollTo(0,document.body.scrollDown)

# Remove Text Title Tab

    click element         ${dining_title}
    Press Keys            ${dining_title}        CTRL+A+DELETE

# Remove Text Description
    click element       ${dining_description}
    Press Keys        ${dining_description}      CTRL+A+DELETE

# Title
      input text          ${dining_title}      Natural Carrot Juice

# Description
      input text          ${dining_description}        Carrot Juice

# Image
    input text        ${image}       Carrot Juice

# click Magnifier search
  click element         ${Search}

# Search Image
  click element                        id=image_1623157

# Click DONE
   click element       ${DONE}

 # visible the Image (download to image)
   Execute Javascript              window.scrollTo(0,document.body.scrollHeight)

# visible Meal Category
    # Breakfast
    wait until element is visible       ${Breakfast}


# go up to the Waterford Community Meals Tab
   Execute Javascript              window.scrollTo(0,document.body.scrollDown)


# enter Star Date Calendar
    click element        ${Start-Date}

#  Save Dinning
   element text should be      ${Save_btn}     Save
   click element               ${Save_btn}


#  Reload page to eliminate waiting
    reload page

# enter the registered meal capture
    scroll element into view        ${Natural Juice}
    click element                   ${Natural Juice}

# Visible Repets "Does Not Repeat"
   scroll element into view            ${tags}
   mouse down       ${tags}
   click element         ${tags}

# click fill Repeats
   scroll element into view             ${Tab_Repeats}
   click element                        ${Tab_Repeats}

# click Recurrence Monthly
   click element         ${Recurre_Monthly}


# Visible the window Recurrence and click button save

# Modify Every Months (increase number of Months)
  double click element                 ${modify_day}
   choose file                         ${modify_day}           3

# Select Simbol
    click element        ${Simbol_on_day2}

# select the day of recurrence
    click element       ${PositionSelect}
    click element       ${Select_Last}
    click element       ${Date_Select}
    click element       ${Select_Saturday}

# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      5


# save the Recurrences Monthly
    click element           ${SaveRecurrence}

# record Lunch capture
    scroll element into view        ${Save_btn}
    double click element            ${Save_btn}

# Select Button select All
    scroll element into view                ${Button_SelectAll}
    mouse down                              ${Button_SelectAll}


#  Reload page to eliminate waiting
    reload page

# enter the registered meal capture
    scroll element into view        ${Natural Juice}
    click element                   ${Natural Juice}

# click tab $Waterford Community Meals
    click element           ${Waterford Community Meals}

# Select Button select All
    scroll element into view                ${Button_SelectAll}
    click element           ${Button_SelectAll}

# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Menu_Items}
    set focus to element                ${Delete_Menu_Items}
    click element                       ${Delete_Menu_Items}

# Click Button "Yes,Delete"
    click element              ${delete_Yes}

