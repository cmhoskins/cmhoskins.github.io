#setup.R

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()){
        install.packages(x[i])
      }
      library((x[i]), character.only = TRUE)
    }
  }

packageLoad('tidyverse')

#create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown',
              'rstatix',
              'purrr',
              'lubridate',
              'lterdatasampler',
              'dplyr',
              'ggplot2',
              'plotly',
              'dataRetrieval',
              'httr',
              'jsonlite',
              'zoo',
              'dataRetrieval',
              'ggpubr',
              'ggpmisc',
              'sf',
              'gridExtra',
              'tmap')


#use the packageLoad function we created on those packages
packageLoad(packages)


