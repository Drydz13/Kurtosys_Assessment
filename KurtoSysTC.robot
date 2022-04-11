*** Settings ***
Documentation    KurtosysAssessment-Dryden Naidoo
Library           SeleniumLibrary
Resource        ../../Resources/KurtosysAssesment/Kurtosys_Vars.robot
Resource        ../../Resources/KurtosysAssesment/Assessment_keywords.robot
#Suite Teardown    Close Browser

*** Test Cases ***
Launch Kurtosys Website
  Open Browser                        ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  Digital Experience Platform For The Asset Management Industry | Kurtosys

Navigate to resources
    Navigate to Resources
