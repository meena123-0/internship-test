
I Have Used R Studio(R Programming) to Complete this task.
Source Code is in  this (Bungee1st.r) file
Out Put Files are also Included in the repository.
###### R CODE #####
rm(list=ls())

setwd("C:\\Users\\P Meena\\Desktop")
data <- read.csv("main.csv")
View(data)
head(data)

## Install dplyr Package in the package Section Of R Studio##
library(dplyr)
df<-(data %>% select(SKU, DESCRIPTION,YEAR, CAPACITY, URL, PRICE, SELLER_INFORMATION, OFFER_DESCRIPTION, COUNTRY) %>%
  filter(COUNTRY  == "USA (CA)"))
View(df)
write.csv(df,"C:\\Users\\P Meena\\Desktop\\filteredCountry.csv",row.names = FALSE)


setwd("C:\\Users\\P Meena\\Desktop")
data <- read.csv("filteredCountry.csv")
View(data)
require(dplyr)

SKU_PRICE <-data  %>% select(SKU, PRICE)

SKU_PRICE2 <- SKU_PRICE %>%
  group_by(SKU) %>%
  summarise(
    FIRST_MINIMUM_PRICE = min(PRICE, na.rm = T),
    SECOND_MINIMUM_PRICE = sort(PRICE)[length(PRICE) - 1]
    
  ) %>%
  arrange(SKU)



write.csv(SKU_PRICE2,"C:\\Users\\P Meena\\Desktop\\lowestPrice.csv",row.names = FALSE)



setwd("C:\\Users\\P Meena\\Desktop")
data <- read.csv("lowestPrice.csv")
View(data)
