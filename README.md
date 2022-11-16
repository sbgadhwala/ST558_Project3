# Prediting Article Shares : [News Popularity Dataset](https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity) 


This repository is final submission for ST558 Project 3 by Shyam Gadhwala & Kamlesh Pandey. In this project we are predicting the number of shares for an article published in [Mashable](https://mashable.com/) website.  
For this project, we have utilized R programming language and its several libraries for data analysis, visualization, and predictive modeling. R libraries used in the analysis is listed below  

```{r}
library(dplyr)  
library(readr)  
library(ggplot2)  
library(tidyr)  
library(tidyverse)  
library(caret)  
library(glmnet)  
```
All reports generated via automating R Markdown can be found here  

[Technology articles analysis](data_channel_is_tech.html)  
[Lifestyle articles analysis](data_channel_is_lifestyle.html)  
[Entertainment articles analysis](data_channel_is_entertainment.html)  
[Business articles analysis](data_channel_is_bus.html)  
[Social Media articles analysis](data_channel_is_socmed.html)  
[World articles analysis](data_channel_is_world.html)  

We have also utilized powerful R markdown to automate report generation for different types of data type available in the online article website. Following code is responsible for automating reports and generating github rendered page.  

```{r}
library(rmarkdown)
library(tidyr)

dataType = c('data_channel_is_lifestyle',
             'data_channel_is_entertainment',
             'data_channel_is_bus',
             'data_channel_is_socmed',
             'data_channel_is_world',
             'data_channel_is_tech')

outputFile <- paste0(dataType, ".html")

#create a list of data channel type
params = lapply(dataType, FUN = function(x){list(data_channel = x)})

reports <- tibble(outputFile, params)

apply(reports, MARGIN = 1,
      FUN = function(x){
        render(input = 'ST558_Project_3.Rmd', output_file = x[[1]], params = x[[2]])
      })
```
