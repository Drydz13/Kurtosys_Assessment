*** Variables ***
#*********************************************** Common Variables ******************************************************
${BROWSER}                  chrome
${URL}                      https://www.kurtosys.com/
${ClickResourceElement}     xpath://a[@href="https://www.kurtosys.com/resources/"]
${WhitePaperlink}           xpath://a[@href="https://www.kurtosys.com/white-papers/"]
${OpenArticle}              xpath://a[@href="https://www.kurtosys.com/white-papers/the-esg-digital-revolution/"]
${FirstName}                xpath//*[@id="pardot-form"]/div[1]//input
${LastName}                 xpath://*[@id="pardot-form"]/div[2]//input
${Company}                  xpath//*[@id="pardot-form"]/div[4]//input
${Industry}                 xpath:////*[@id="pardot-form"]/div[5]//input
${SendCopy}                 xpath://*[@id="18882_247351pi_18882_247351_3231491"]
${ClickButton}              xpath://*[@id="pardot-form"]/p[3]/input