library(rmarkdown)
library(tidyr)

dataType = c('data_channel_is_lifestyle',
             'data_channel_is_entertainment',
             'data_channel_is_bus',
             'data_channel_is_socmed',
             'data_channel_is_world')

outputFile <- paste0(dataType, ".html")

#create a list of data channel type
params = lapply(dataType, FUN = function(x){list(data_channel = x)})

reports <- tibble(outputFile, params)


apply(reports, MARGIN = 1, 
      FUN = function(x){
        render(input = 'ST558_Project_3.Rmd', output_file = x[[1]], params = x[[2]])
      })