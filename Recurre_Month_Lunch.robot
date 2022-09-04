*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR01 Automation to enter Community Waterford Recurrence Monthly (Lunch)
        [Tags]      Validation Test       Case 1

# Open Community Waterford Engage360
# Open Community Waterford Engage360
    scroll element into view            id=SuperUserCombo_open_btn
    press keys                           id=SuperUserCombo_open_btn            enter
    click element                       ${Waterford}

# Select and unselect Last 30 Days , Last 7 Days
    wait until element is visible       ${Last7Days}
    set focus to element        ${Last7Days}
   click element   ${Last7Days}
   go back

# Simulate click Total Opened Window
        wait until element is visible       ${Total_Opened}
        set focus to element                ${Total_Opened}
        element should be visible           ${Total_Opened}      Total Opened
        mouse over                          ${Total_Opened}

#  Enter Dinning Window
       scroll element into view            ${Dinning}
       double click element          ${Dinning}

# Click Community Waterford
        scroll element into view           ${Community}
        wait until element is visible      ${Community}
        set focus to element               ${Community}
        double click element               ${Community}



# Enter Button Add Menu Item

        wait until element is visible   ${Add Menu Item}
        element text should be          ${Add Menu Item}         Add Menu Item
        mouse down                      ${Add Menu Item}
        double click element            ${Add Menu Item}



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

# click Does Not Repeat
   click element         ${Recurre_Monthly}


# Visible the window Recurrence and click button save

# Modify Every Months (increase number of Months)
  double click element                ${modify_day}
   choose file                         ${modify_day}           3

# Select Simbol on day
    click element        ${Simbol_on_day}

# Modify on day
    double click element        name=monthlyDayNumber
    Press Keys                  name=monthlyDayNumber      CTRL+A+DELETE
    choose file                 name=monthlyDayNumber          15

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

## Button select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    set focus to element                    ${Button_SelectAll}
    mouse down                              ${Button_SelectAll}

# select and unselect button Select All
    double click element                         ${Button_SelectAll}

# simulate click and image Title
    wait until element is visible        ${Text_Image}
    mouse over                           ${Text_Image}

#  click  Icon Item Menu
    execute javascript      document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[4].click()

# click icon Meal
    execute javascript      document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[5].click()


# click icon Date Served
    execute javascript      document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[6].click()

# enter button Print
    scroll element into view            ${Log_Print}
    wait until element is visible       ${Log_Print}
    set focus to element                ${Log_Print}
    click element                       ${Log_Print}

# advanced simbol right_arrow
    double click element        ${right_arrow}

    double click element        ${right_arrow}

    double click element        ${right_arrow}

    double click element        ${right_arrow}

    double click element        ${right_arrow}

    click element               ${right_arrow}


## advanced simbol left_arrow
    double click element        ${left_arrow}

    double click element        ${left_arrow}

    double click element        ${left_arrow}

    double click element        ${left_arrow}

    double click element        ${left_arrow}

    click element               ${left_arrow}



# click Button print
    click element       id=PrintScheduleBtn

    click element       ${Print_Close}

    go to       http://dev.www.engage360.evacompute.com:8080/dinings
