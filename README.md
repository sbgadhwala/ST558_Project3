Project 3
================
Kamlesh Pandey
11/9/2022

# Library

``` r
library(dplyr)
library(readr)
```

# Introdcution

We are living in a digital world where we are more concerned about our
digital footprint and people often look toward the like and share they
get on a post that they publish online. We have several social media
websites and print media to share our articles. Online print media
platform like [Mashable](www.mashable.com) publishes thousand of online
media everyday and it is important for them get a more user engagement
from the the article they post online. In this dataset we are trying to
predict the share based on several predictor columns such as text
sentiment polarity, rate of negative words, rate of positive words, and
many more. Why this analysis is important ? From this predictive model,
Mashable can predict the number of share they can receive based on the
type of article they are publishing online.

# Data

The dataset summarizes a heterogeneous set of features about articles
published by in a period of two years.The dataset has 39644 data points
and 61 feature columns. The project is aimed to subset the original
dataset based on type of data channel (one of the six type) and then to
predict the number of shares variable. For this project we are using …..
for training and building a predictive modeling and eventually same
analysis will be used for remaining five data channel. User will have
flexibility to choose the type of analysis they want based on their
personal choice.

``` r
newpopData <- readr::read_csv('OnlineNewsPopularity.csv',
                              locale = locale(encoding = 'latin1'))
head(newpopData,5)
```

    ## # A tibble: 5 x 61
    ##   url        timed~1 n_tok~2 n_tok~3
    ##   <chr>        <dbl>   <dbl>   <dbl>
    ## 1 http://ma~     731      12     219
    ## 2 http://ma~     731       9     255
    ## 3 http://ma~     731       9     211
    ## 4 http://ma~     731       9     531
    ## 5 http://ma~     731      13    1072
    ## # ... with 57 more variables:
    ## #   n_unique_tokens <dbl>,
    ## #   n_non_stop_words <dbl>,
    ## #   n_non_stop_unique_tokens <dbl>,
    ## #   num_hrefs <dbl>,
    ## #   num_self_hrefs <dbl>,
    ## #   num_imgs <dbl>, ...

# Exploratory Data Analysis
