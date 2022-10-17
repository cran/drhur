## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE
)

library(kableExtra)

## ----eval = FALSE-------------------------------------------------------------
#  if (!require(drhur)) install.packages("drhur")
#  library(drhur)
#  
#  drhur("play")
#  

## ---- results='asis', echo=FALSE----------------------------------------------
txt <- data.frame(
  Function = 
    c('<a href="#play">play</a>',
      '<a href="#wrangle">wrangle</a>',
      '<a href="#describe">describe</a>',
      '<a href="#calculate">calculate</a>',
      '<a href="#visualize">visualize</a>&nbsp;&nbsp;'),
  Description = 
    c('**Playing around with R:** Intro to basic data structure in R; inputting, outputting, and creating data.',
      paste('**Data wrangling: ** Description of variables and data using characters and visualizations.'),
      paste('**Data describing: ** Generalizing (such as sorting and summarizing) and extracting (selecting or adjusting certain columns or rows) data frames.'),
      paste('**Data calculating:** Analyze data with descriptive and multivariate tools and diagnoses.'),
      paste("**Data presenting:** Present descriptive and analytic results with 'ggplot2'")),
  Usage = 
    c("`drhur('play')`",
      paste("`drhur('wrangle')`"),
      paste("`drhur('describe')`"),
      paste("`drhur('calculate')`"),
      paste("`drhur('visualize')`"))
  )

kable(txt, format = "html", escape = FALSE, align = c('l', 'l')) %>%
  kable_styling(full_width = FALSE, position = "left") %>%
  column_spec(1, bold = TRUE, monospace = TRUE, border_right = TRUE) %>%
  column_spec(2, width = "28em") %>%
  column_spec(3, width = "28em")

