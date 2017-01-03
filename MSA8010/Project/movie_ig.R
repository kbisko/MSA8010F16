rm(list=ls())
setwd("C:/Users/CB/Desktop/School/MSA8010")

install.packages("FSelector")
library(FSelector)
install.packages("xlsx")
library(xlsx)

movie <- read.csv(file = "movie_v3.csv", header = TRUE,sep=",")

head(movie)
wmovie <- information.gain(imdb_score~.,movie)
w2movie <-symmetrical.uncertainty(imdb_score~.,movie)
wmovie
w2movie

write.csv(movie, file = "movie_v4.csv")
