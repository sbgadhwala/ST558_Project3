# get unique data type
library(rmarkdown)
channelType = c(' data_channel_is_lifestyle',
               ' data_channel_is_entertainment',
               ' data_channel_is_bus',
               ' data_channel_is_socmed',
               ' data_channel_is_tech',
               ' data_channel_is_world')

# create output file name
outputFile <- paste0(channelType, ".html")

params <- lapply(channelType, FUN = function(x){list(data_channel = x)})

report <- tibble(outputFile, params)

apply(report, MARGIN = 1,
      FUN = function(x){
        render(input = 'ST558_Project_3.Rmd',
               output_file = x[[1]], params = x[[2]])
      })
# 
# rmarkdown::render(input = 'ST558_Project_3.Rmd',
#                   output_file = 'README.md')
