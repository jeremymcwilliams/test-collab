library(tidyverse)
library(gt)

#load data

summaryTable<- function(){
  #path is from the perspective of current working directory
  data<-read_csv("data/vet-nonvetCancerRates.csv")
  
  year2014<-data |>
    filter(ddodyear=="2014") |>
    select(ddodyear, diseaseSite, ddvet, rate_per_100k) |>
    gt() |>
    tab_header(title = "2014 Cancer Death Rates, Vet vs Non-Vet")
  
  #print it
  year2014
  

}

summaryTable()
