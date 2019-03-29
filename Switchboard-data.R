#setwd("/Users/howellj/Documents/work_web/focus-ground-truth")

q = read.csv("Switchboard Focus Sentences - LMEDS Data (temp).csv", header=T)

library(tidyverse)

is.factor(q$Word)

q$Word <- factor(q$Word,ordered=TRUE)
levels(q$Word)

data <- q %>% 
  filter(X == "sw02020") %>% 
  select(c(X,Word,sum.p)) %>% 
  spread(Word,c(sum.p))

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

