
################################################################################
# Script to create plots using in the paper "Loss of habitat and connectivity  #
# for the Spectacled Bear Tremarctos ornatus in Colombia, and evaluation of    #
# the role of Protected Areas and communal territories in its conservation     #
################################################################################

# By: Cristian Alexandder cruz Rodríguez
# Universidadé de Montreál
# Date: Sept 28 2023

# Note: The data set is not published now and cannot be used with a process that is not described
# in this file.

## The analysis that will be used for this data set appearing in the next version.

## 1. Load de libraries
library(hrbrthemes)
library(tidyverse)

## 2. Define the route and select the datset

setwd('/Users/Shared/connectivity_andean_bear') # Use its option to select the folder if don't use the "connectivity_andean_bear.Rproj: file to open project
dt <- read.csv(file = 'rawData/BM_all_data2.csv') # open the raw dataset.

year <- as.data.frame(table(dt$year)) # obtain the table withe the number of records per year. 

## 3. Figure and table

# a.[Figure] Number of records in the last 25 years.
tail(year,25) %>%
  ggplot( aes(x=Var1, y=Freq, group =1)) +
  geom_line(color="dodgerblue1") +
  labs(y= "number of records", x = "Years") +
  theme(axis.text.x = element_text(angle=-45, vjust=.5, hjust=1))

# b.[Table] Number of records per country to the species.
tb <-  as.data.frame (table(dt$country))
names(tb) <- c('Countries', 'Frecuency');
tb[order(tb$Frecuency, decreasing = T),]

## End ##

