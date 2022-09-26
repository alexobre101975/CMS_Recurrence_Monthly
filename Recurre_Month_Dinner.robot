*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR03 Automation to enter Community Waterford Recurrence Monthly (Dinner)
        [Tags]      Validation Test       Case 3
# Open Community Waterford Engage360
    scroll element into view            ${Icon_Communities}
    press keys                          ${Icon_Communities}        enter
    click element                       ${Waterford}

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
    input text          ${dining_title}      Rib-eye Steak and Salad

# Description
    input text          ${dining_description}      Rib-eye steak and creamy béarnaise sauce and vegetables

# Image
  input text        ${image}        Rib-eye

# click Magnifier search
  click element         ${Search}


# Search Image
  click element                         id=image_866831

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
# Dinner
   click element    ${Dinner}

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
  execute javascript      ${oct10}

#  click Tab Tags
   scroll element into view            ${tags}
   mouse down                   ${tags}
   click element                ${tags}

# click fill Repeats
   scroll element into view             ${Tab_Repeats}
   click element                        ${Tab_Repeats}


# click Monthly
   click element            ${Recurre_Monthly}

# Visible the window Recurrence

# Modify Every Months (increase number of Months)
  double click element                ${modify_day}
   choose file                        ${modify_day}           3

# Select Simbol
    click element        ${Simbol_on_day2}

# Position Select Fourth
    click element        ${PositionSelect}
    click element       ${Select_Fourth}

# Click Tab Monthly week date Select
    click element       ${Date_Select}
    click element       ${Select_Saturday}

# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      3

#  Save Recurrence
   scroll element into view    ${SaveRecurrence}
   click element               ${SaveRecurrence}

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

# simulate click and image Title
    wait until element is visible        ${Text_Image}
    set focus to element                 ${Text_Image}
    mouse over                           ${Text_Image}



# click icon Date Served
    execute javascript      ${Date Served}

# click Search button
    scroll element into view           ${Search_Button}
    wait until element is visible      ${Search_Button}
    set focus to element               ${Search_Button}
    mouse down                         ${Search_Button}
    click element                      ${Search_Button}

# Close search button

    click element          ${clear_search}


# enter filters button
    double click element           ${btn_filters}

    click image      https://engage360.s3.amazonaws.com/Icons/Categories/times-circle.svg

## click Button select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    set focus to element                    ${Button_SelectAll}
    click element                           ${Button_SelectAll}

# Delete Multiple Dining
    scroll element into view             ${delete_multiple}
    set focus to element                 ${delete_multiple}
    click element                        ${delete_multiple}

# delete Button Yes
    wait until element is visible         ${delete_Yes}
    set focus to element                  ${delete_Yes}
    click element                         ${delete_Yes}


