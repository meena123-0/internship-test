rm(list=ls())

setwd("C:\\Users\\P Meena\\Desktop")
data <- read.csv("main.csv")
View(data)
head(data)


library(dplyr)
df<-(data %>% select(SKU, DESCRIPTION,YEAR, CAPACITY, URL, PRICE, SELLER_INFORMATION, OFFER_DESCRIPTION, COUNTRY) %>%
  filter(COUNTRY  == "USA (CA)"))
View(df)
write.csv(df,"C:\\Users\\P Meena\\Desktop\\filteredCountry.csv",row.names = FALSE)






