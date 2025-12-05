##TEST

x<-1:100
y<-cumsum(x)
plot(x)
plot(y)

#install.packages("data.table")
library(data.table)

setwd("C:/Users/besieda/Downloads/rtrain")
#df <- read.csv("swsdata.csv", header = TRUE, sep = ",")
#df

data <- fread("swsdata.csv")
data
View(data)
class(data)

itemcode <- fread("itemcodes.csv")
itemcode

data1<-merge(data, itemcode, by.x="measuredItemCPC", by.y="CPCCode")
data1
dcode<-c("0111")
dcode
data2<-data1("CPCCode" %in% dcode)
data2

