setwd("/Users/zikangchen97/Downloads/drive-download-20211206T201941Z-001")
cb1 <- read.csv("cleaned_data0.csv")
cb2 <- read.csv("cleaned_data1.csv")
cb3 <- read.csv("cleaned_data2.csv")
cb4 <- read.csv("cleaned_data3.csv")
cb5 <- read.csv("cleaned_data4.csv")
cb6 <- read.csv("cleaned_data5.csv")
cb7 <- read.csv("cleaned_data6.csv")
cb8 <- read.csv("cleaned_data7.csv")
cb9 <- read.csv("cleaned_data8.csv")
cb10 <- read.csv("cleaned_data9.csv")
cb11 <- read.csv("cleaned_data10.csv")
cb12 <- read.csv("cleaned_data11.csv")

str(cb1)
combineddata<- rbind(cb1,cb2,cb3,cb4,cb5,cb6,cb7,cb8,cb9,cb10,cb11,cb12)

backup<-combineddata
combineddata<- backup

combineddata$date<- gsub('"', '', combineddata$date)
combineddata$date<- gsub('-', '/', combineddata$date)
class(combineddata$date)
combineddata$date <- as.Date(combineddata$date, format = '%y/%m/%d')
combineddata$weekdays <- weekdays(combineddata$date)

combineddata$minute <- rm()
combineddata$pm <- rm()
combineddata$hour <- combineddata$hour+12*combineddata$pm
unique(combineddata$tot_docks)
write.csv(combineddata, "citibikedata2.csv", row.names = F)

