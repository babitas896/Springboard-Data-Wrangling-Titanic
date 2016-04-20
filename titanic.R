# load tex mining pacakge

library(dplyr)
library(data.table)

#set wroking directory where tweets file is resding
setwd("C:/Users/ctsuser1/Desktop/Babita/Data Science/springboard/Titanic")

#select(myTitanic.embarked, matches("^$"))
#myTitanic_dt %>% filter(embarked == "^$") #- not working for getting only those col./row
#myfile <- mutate(myTitanic_dt, emabrked = ifelse(embarked == "", "S", embarked)) #- not working
#myfile <- mutate(myTitanic_dt, if (embarked=="^$"){embarked = "S"}) #- not working
#read the titanic file
myTitanic <- read.csv(file = "titanic_original.csv")
myTitanic_dt <- tbl_dt(myTitanic)
myTitanic_dt$embarked = sub("^$", "S", myTitanic_dt$embarked) 
myTitanic$embarked = sub("^$", "S", myTitanic$embarked) 
myTitanic$age[which(is.na(myTitanic$age))] = mean(myTitanic$age, na.rm = TRUE)
myTitanic$boat = sub("^$", "NA", myTitanic$boat)

  