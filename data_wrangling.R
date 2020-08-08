library(tidyjson)
library(dplyr)
library(ggplot2)
library(lubridate)
library(rjson)

jan <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-01-01 00:00/2020-01-31 23:59")
feb <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-02-01 00:00/2020-02-31 23:59")
mar <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-03-01 00:00/2020-03-31 23:59")
apr <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-04-01 00:00/2020-04-31 23:59")
may <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-05-01 00:00/2020-05-31 23:59")
jun <- fromJSON(file="https://www.airquality.dli.mlsi.gov.cy/all_stations_data_range/2020-06-01 00:00/2020-06-31 23:59")

### STATION 1
station1 <- c(jan$data$station_1$values,feb$data$station_1$values,mar$data$station_1$values,
          apr$data$station_1$values,may$data$station_1$values,jun$data$station_1$values)
station1 <- station1 %>% spread_all()
station1$..JSON <- NULL

write.csv(station1,"station1.csv",row.names = F)
### STATION 2

station2 <- c(jan$data$station_2$values,feb$data$station_2$values,mar$data$station_2$values,
          apr$data$station_2$values,may$data$station_2$values,jun$data$station_2$values)
station2 <- station2 %>% spread_all()
station2$..JSON <- NULL
write.csv(station2,"station2.csv", row.names = F)

### STATION 3
station3 <- c(jan$data$station_3$values,feb$data$station_3$values,mar$data$station_3$values,
              apr$data$station_3$values,may$data$station_3$values,jun$data$station_3$values)
station3 <- station3 %>% spread_all()
station3$..JSON <- NULL

write.csv(station3,"station3.csv", row.names = F)

### STATION 5
station5 <- c(jan$data$station_5$values,feb$data$station_5$values,mar$data$station_5$values,
              apr$data$station_5$values,may$data$station_5$values,jun$data$station_5$values)
station5 <- station5 %>% spread_all()
station5$..JSON <- NULL
write.csv(station5,"station5.csv", row.names = F)

### STATION 7
station7 <- c(jan$data$station_7$values,feb$data$station_7$values,mar$data$station_7$values,
              apr$data$station_7$values,may$data$station_7$values,jun$data$station_7$values)
station7 <- station7 %>% spread_all()
station7$..JSON <- NULL
write.csv(station7,"station7.csv", row.names = F)

### STATION 8 
station8 <- c(jan$data$station_8$values,feb$data$station_8$values,mar$data$station_8$values,
              apr$data$station_8$values,may$data$station_8$values,jun$data$station_8$values)
station8 <- station5 %>% spread_all()
station8$..JSON <- NULL
write.csv(station8,"station8.csv", row.names = F)


### STATION 9 
station9 <- c(jan$data$station_9$values,feb$data$station_9$values,mar$data$station_9$values,
              apr$data$station_9$values,may$data$station_9$values,jun$data$station_9$values)
station9 <- station5 %>% spread_all()
station9$..JSON <- NULL
write.csv(station9,"station9.csv", row.names = F)

### STATION 10
station10 <- c(jan$data$station_10$values,feb$data$station_10$values,mar$data$station_10$values,
              apr$data$station_10$values,may$data$station_10$values,jun$data$station_10$values)
station10 <- station5 %>% spread_all()
station10$..JSON <- NULL
write.csv(station10,"station10.csv", row.names = F)

### STATION 11
station11 <- c(jan$data$station_11$values,feb$data$station_11$values,mar$data$station_11$values,
              apr$data$station_11$values,may$data$station_11$values,jun$data$station_11$values)
station11 <- station5 %>% spread_all()
station11$..JSON <- NULL
write.csv(station11,"station11.csv", row.names = F)
