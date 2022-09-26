*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR02 Automation to enter Community Waterford Recurrence Monthly (Lunch)
        [Tags]      Validation Test       Case 2


# Open Community Waterford Engage360
    scroll element into view             ${Icon_Communities}
    press keys                           ${Icon_Communities}          enter
    click element                        ${Waterford}

# Simulate click Total Opened Window
     wait until element is visible       ${Total_Opened}
     set focus to element                ${Total_Opened}
     element should be visible           ${Total_Opened}      Total Opened
     mouse over                          ${Total_Opened}

#  Enter Dinning Window
    execute javascript              ${Dinning}

# Click Community Waterford
     scroll element into view             ${Community}
      wait until element is visible       ${Community}
      set focus to element                ${Community}
      double click element                ${Community}

# Enter Button Add Menu Item
    execute javascript         ${Add Menu Item}




# complete General Info correctly

# Title
    input text          ${dining_title}      Chicken Breast

# Description
    input text          ${dining_description}      vegetable garnish

# Image
  input text        ${image}        Chicken Breast

# click Magnifier search
  click element         ${Search}

# Search Image
  scroll element into view              id=image_2215709
  click element                         id=image_2215709

# Click DONE
   click element       ${DONE}



 # visible the Image (download to image)
   Execute Javascript              window.scrollTo(0,document.body.scrollHeight)


 # go up to the identifiers window
   Execute Javascript              window.scrollTo(0,document.body.scrollDown)






# fill the identifiers correctly


# fill the tags field
   scroll element into view            ${tags}

# Text tags
    input text         ${tags}          Delicious
    press keys         ${tags}       ENTER

# Text tags
    input text         ${tags}          Super Dinner
    press keys         ${tags}       ENTER


# Meal Category
# Lunch
   click element    ${Lunch}


# select Button Hide On Print
    select checkbox     ${Hide_Print}
    unselect checkbox   ${Hide_Print}









# complete Recurrences correctly


 # enter Star Date Calendar
    click element        ${Start-Date}

# Enter Botton Calendar
    press keys             ${Calendar_Btn}      Enter

# Click advance one month
    click element       ${advance_month}

# Modify Date New Month and new day
    execute javascript      ${oct28}



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

# Select Simbol on day
    click element        ${Simbol_on_day}

# Modify on day
    double click element        ${Modify_on_day}
    Press Keys                  ${Modify_on_day}        CTRL+A+DELETE
    choose file                 ${Modify_on_day}            15

# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      4


# Visible the message that appears after modifying month, days and occurrences in the recurrence window
    wait until element is visible       ${Month_Recu_Window}
    element should contain              ${Month_Recu_Window}       Occurs day 15 of every 3 months starting

# Click Save button Recurrence
     click element                           ${SaveRecurrence}

# Verify that the message after closing the Recurrences window is the same as the one in Recurrences under Repeats(monthly)

    wait until element is visible      ${Month_Recu_Window1}
    element should contain             ${Month_Recu_Window1}      Occurs day 15 of every 3 months starting


#  Save Dinning
   scroll element into view    ${Save_btn}
   element text should be      ${Save_btn}     Save
   click element               ${Save_btn}
   click element               ${Save_btn}


# Make the Alert message "This meal has been added succesfully" visible
   wait until element is visible        ${Message_Accept}
   element should be visible            ${Message_Accept}          This meal has been added succesfully

# Reload page to eliminate waiting
    reload page

# enter the registered meal capture
    scroll element into view        ${Chicken Breast}
    click element                   ${Chicken Breast}

# return to screenshots page
    scroll element into view     ${Waterford Community Meals}
    click element      ${Waterford Community Meals}

# simulate click and image Title
    wait until element is visible        ${Text_Image}
    mouse over                           ${Text_Image}

# Button select All
    scroll element into view                ${Button_SelectAll}
    click element                           ${Button_SelectAll}

# Browse icons Item Menu, Meal, Date Served
#  click  Icon Item Menu
    sleep   2
    execute javascript      ${Icon Item Menu}
    sleep   2
# click icon Meal
    execute javascript      ${icon Meal}
    sleep   2
# click icon Date Served
    execute javascript      ${Date Served}

# enter button Print
    scroll element into view            ${Log_Print}
    click element                       ${Log_Print}

# advanced simbol right_arrow
    double click element        ${right_arrow}

    double click element        ${right_arrow}

    double click element        ${right_arrow}

    double click element        ${right_arrow}


 # Return simbol left_arrow
    double click element        ${left_arrow}

    double click element        ${left_arrow}

    double click element        ${left_arrow}

    double click element        ${left_arrow}

# click icon Close Print
    click element           ${icon_Close_Print}


# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Menu_Items}
    set focus to element                ${Delete_Menu_Items}
    click element                       ${Delete_Menu_Items}

# Click Button "Yes,Delete"
    click element              ${delete_Yes}

