

##  Testing git on new machine

d = read.csv("Switchboard Focus Sentences - LMEDS Data (temp).csv",header=T)

#setwd("/Users/howellj/Documents/work_web/focus-ground-truth")

getwd()

library(tidyverse)

  q = read.csv("Switchboard Focus Sentences - LMEDS Data (temp).csv", header=T)
  q$sequence <- seq(length(q$Word))
  q <- gather(q,annotation,sum.p,c(sum.p,Switchboard))
  q <- filter(q,X == "sw02790")
  ggplot(q, aes(x=fct_reorder(Word,sequence), y=sum.p, group=annotation)) + geom_line(aes(color=annotation)) + geom_point(aes(color=annotation))

  q = read.csv("Switchboard Focus Sentences - LMEDS Data (temp).csv", header=T)
  q$sequence <- seq(length(q$Word))
  q <- gather(q,annotation,sum.p,c(sum.p,Switchboard))
  q <- filter(q,X == "sw02790")
  ggplot(q, aes(x=fct_reorder(Word,sequence), y=sum.p, group=annotation)) + geom_line(aes(color=annotation)) + geom_point(aes(color=annotation))
  
  

data <- q
colnames(data)[length(data)] <- "sequence"
data <- filter(q,X == "sw02020")
data.sum <- select(.data = data,X,Word,sum.p)
data.SB <- select(.data = data,X,Word,Switchboard)
data.sum$Word <- droplevels(data.sum$Word)
data.SB$Word <- droplevels(data.SB$Word)
levels(data.sum$Word) <- as.character(data.sum$Word)
levels(data.SB$Word) <- as.character(data.SB$Word)
  data.sum <- spread(data.sum,c(Word),c(sum.p))
  data.SB <- spread(data.SB,c(Word),c(Switchboard))
data <- rbind(data.sum,data.SB)
data$annotation <- c("Turk","Switchboard")

ggplot(data) +
  geom_line(mapping=aes)
  
    
?select()

order(data$Word,decreasing)
sort(data$Word)

?order()

#data <- q %>% 
# filter(X == "sw02012")

  data <- 

  data
  
  ggplot(data=dat, aes(x=time, y=total_bill, group=1)) +
    geom_line()
  
  
seq(length=nrow(q$Word))



levels(data$Word,ordered=F)



data <- q %>% 
  select(c(X,Word,Switchboard)) %>% 
  filter(X == "sw02020") %>% 
  spread(Word,c(Switchboard))

test <- q %>% 
  select(-X)


# Turn a bunch of columns into rows, with the columnnames as level names
# Basic idea: use all columns you don't want to touch as id columns
# in the example below, the complicating factor is that there are two sets
# of columns that are supposed to end up in different variables.
# The solution might not be the most elegant one...

library(reshape)
#for pitch
smelt=melt(q,id=c("sum.p"),measure.vars=c("Word"))

q = read.csv("Switchboard Focus Sentences - LMEDS Data (temp).csv", header=T)
q <- gather(q,annotation,sum.p,c(sum.p,Switchboard))
>>>>>>> cc8c05a371424787386173e8659b00a765eb932c
