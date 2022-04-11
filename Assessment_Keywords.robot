*** Settings ***
Library          SeleniumLibrary
Resource         ../../Resources/KurtosysAssesment/Kurtosys_Vars.robot
Library          DateTime
#Library          BuiltIn


*** Keywords ***
Launch Kurtosys Website
    Open Browser                        ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  Digital Experience Platform For The Asset Management Industry | Kurtosys

Navigate to Resources
#  Navigate to resources tab
   Log to console   Navigate to resources tab
   Mouse Down on link    ${ClickResourceElement}
   sleep        1.5 seconds
#   wait until element is visible    ${WhitePaperlink}
   Click element     ${WhitePaperlink}
   sleep       1.5 seconds
   wait until element is visible     ${OpenArticle}
   Click Link       ${OpenArticle}

#   Enter Form Values
   Log to console   Enter Form Values
   Switch Window
   Title Should Be  The ESG Digital Revolution | Kurtosys
   Scroll Element into view     ${FirstName}
   sleep    3 seconds
   wait until element is visible    ${FirstName}    30 seconds

#  Enter FirstName
   Log to console   Enter FirstName
   Input Text   ${FirstName}    Dryden
   sleep       0.5 seconds

#   Enter LastName
    Log to console  Enter LastName
   Input Text   ${LastName}     Naidoo
   sleep        0.5 seconds

#   Enter Company
   Log to console   Enter Company
   Input Text   ${Company}      Test
   sleep    0.5 seconds

#  Enter Industry
   Log to console   Enter Industry
   Input Text    ${Industry}    Test abc
   sleep   0.5 seconds

#  Select Send Copy
   Log to console   Select Send Copy
   Click Element    ${SendCopy}
   sleep    0.5 seconds

#   Click Continue
   Log to console   Click Continue
   Click Element   ${ClickButton}
   ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/KurtosysTC/Results/Errors.png