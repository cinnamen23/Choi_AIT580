library(readr)

data <- read_csv("full2.csv")

class(data$EVENT_TYPE)
unique(data$EVENT_TYPE)
summary(data)
str(data)

library(stringi)
library(stringr)

#DAMAGE_PROPERTY unit incorporate
DAMAGE_PROPERTY_UNITY<-ifelse(str_detect(data$DAMAGE_PROPERTY,'M'),1e6,
                              ifelse(str_detect(data$DAMAGE_PROPERTY,'K'),1e3,1))

data$DAMAGE_PROPERTY_UI<-DAMAGE_PROPERTY_UNITY*as.numeric(str_remove(data$DAMAGE_PROPERTY,'K|M'))


#DAMAGE_CROPS unit incorporate
DAMAGE_CROPS_UNITY<-ifelse(str_detect(data$DAMAGE_CROPS,'M'),1e6,
                              ifelse(str_detect(data$DAMAGE_CROPS,'K'),1e3,1))

data$DAMAGE_CROPS_UI<-DAMAGE_CROPS_UNITY*as.numeric(str_remove(data$DAMAGE_CROPS,'K|M'))



#EVENT_TYPE  category shirink

unique(data$EVENT_TYPE)
write.csv(unique(data$EVENT_TYPE),'unique_event_type.csv')

#categorize on the Excel
event_type<-read.csv('unique_event_type.csv')

event_type[,-1]

data1<-merge(data,event_type[,-1],by="EVENT_TYPE",all.x=TRUE)
data1$EVENT_CATEGORY_TYPE<-as.factor(data1$EVENT_CATEGORY_TYPE)
str(data1)

#Visualization casualties
library(ggplot2)

Event_levels<-levels(data1$EVENT_CATEGORY_TYPE)
data1$EVENT_CATEGORY_TYPE<-as.numeric(data1$EVENT_CATEGORY_TYPE)
unique(data1$EVENT_CATEGORY_TYPE)

#scale transition function
addUnits <- function(n) {
  labels <- ifelse(n < 1000, n,  # less than thousands
                   ifelse(n < 1e6, paste0(round(n/1e3), ' k'),  # in thousands
                          ifelse(n < 1e9,
                                 ifelse(round(n/1e6)==round(n/1e6,digits=1),
                                        paste0(round(n/1e6), 'M'),  # in millions
                                        paste0(round(n/1e6,digits=1), ' M')), # in 1.x millions
                                 ifelse(n < 1e12,
                                        ifelse(round(n/1e9)==round(n/1e9,digits=1),
                                               paste0(round(n/1e9), ' B'), # in billions
                                               paste0(round(n/1e9,digits=1), ' B')), # in 1.x billions
                                        ifelse(n < 1e15,
                                               ifelse(round(n/1e12)==round(n/1e12,digits=1),
                                                      paste0(round(n/1e12), ' T'), # in trillions
                                                      paste0(round(n/1e12,digits=1), ' T')), # in 1.x trillions
                                               'too big!'
                                        )))))
  return(labels)
};



#Direct casualties by disaster

sum(data1[data1$EVENT_TYPE=="Wildfire",]$DEATHS_INDIRECT)

ggplot(data1,aes(x=EVENT_CATEGORY_NUM,y=DEATHS_DIRECT))+
  geom_bar(fill="#F8766D",stat='identity')+
  scale_x_continuous(breaks = c(1:7), labels = c(Event_levels))+
  scale_y_continuous(labels = addUnits)+
  ggtitle("Direct casualties by disaster")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 20, color = "darkblue"))+
  theme(axis.title = element_text(face = "bold", size = 13, color = "darkblue"))+
  labs(x="Type of disaster ", y="Total casualties")




#Indirect casualties by disaster

ggplot(data1,aes(x=EVENT_CATEGORY_NUM,y=DEATHS_INDIRECT))+
  geom_bar(fill="#F8766D",stat='identity')+
  scale_x_continuous(breaks = c(1:7), labels = c(Event_levels))+
  scale_y_continuous(labels = addUnits)+
  ggtitle("Indirect casualties by disaster")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 20, color = "darkblue"))+
  theme(axis.title = element_text(face = "bold", size = 13, color = "darkblue"))+
  labs(x="Type of disaster ", y="Total casualties")


#Damage property by disaster
sum(data1[data1$EVENT_CATEGORY_TYPE=="Drought",]$DAMAGE_PROPERTY_UI)
class(data1$DAMAGE_PROPERTY_UI)


data1[is.na(data1$DAMAGE_PROPERTY_UI),"DAMAGE_PROPERTY_UI"]=0
data1[is.na(data1$DAMAGE_CROPS_UI),"DAMAGE_CROPS_UI"]=0



ggplot(data1,aes(x=EVENT_CATEGORY_NUM,y=DAMAGE_PROPERTY_UI))+
  geom_bar(fill="#78C9FF",stat='identity')+
  scale_x_continuous(breaks = c(1:7), labels = c(Event_levels))+
  scale_y_continuous(labels = addUnits)+
  ggtitle("Damage property by disaster")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 20, color = "darkblue"))+
  theme(axis.title = element_text(face = "bold", size = 13, color = "darkblue"))+
  labs(x="Type of disaster ", y="Amount of Damaged property")


class(data1$EVENT_CATEGORY_NUM)

sum(data1[data1$EVENT_CATEGORY_NUM==3,]$DAMAGE_PROPERTY_UI)

#data1[data1$EVENT_CATEGORY_NUM %in% c(1,3,6)]


#Damage crops by disaster
ggplot(data1,aes(x=EVENT_CATEGORY_NUM,y=DAMAGE_CROPS_UI))+
  geom_bar(fill="#78C9FF",stat='identity')+
  scale_x_continuous(breaks = c(1:7), labels = c(Event_levels))+
  scale_y_continuous(labels = addUnits)+
  ggtitle("Damage crops by disaster")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 20, color = "darkblue"))+
  theme(axis.title = element_text(face = "bold", size = 13, color = "darkblue"))+
  labs(x="Type of disaster ", y="Amount of Damaged crops")



#Damage DAMAGE PROPERTY AND CROPS BY YEAR AND TYPE 

ggplot(data1,aes(x=YEAR,y=DAMAGE_CROPS_UI+DAMAGE_PROPERTY_UI,fill=EVENT_CATEGORY_TYPE))+
  geom_bar(stat='identity')+
  scale_y_continuous(labels = addUnits)+
  ggtitle("Damage property & crops by disaster")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 20, color = "darkblue"))+
  theme(axis.title = element_text(face = "bold", size = 13, color = "darkblue"))+
  theme(axis.text.x = element_text(angle = 90, size = 10))+
  labs(x="Years ", y="Amount of Damaged property & crops")