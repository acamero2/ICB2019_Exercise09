## I'm a big fan of a trading card game called Magic: the Gathering.
## In the game, you build a deck of cards ("spells") which you can play to defeat your opponent.
## Each card has a mana cost, and you can only play a card if you have enough mana to pay for it.
## How much mana you are able to generate increases as the game goes on, and thus, cheaper cards can be played sooner.
## As a competitive game, people optimize their decks to play quickly and efficiently, and thus cheaper cards tend to see more play.
## To test this, I got a list of the 100 most popular cards over the past two years for the Commander format (one of several ways to play magic) from the website EDHrec.
## I plotted each cards inverse popularity (most popular=100; least popular=1) against its mana cost.

## set correct working directory.
setwd("C:/Users/Andrew Cameron/Biocomputing/ex9")

## read data.csv and store as dataframe named "data".
data <- read.csv("data.csv",header=TRUE,stringsAsFactors = FALSE)

## load ggplot2 library.
library(ggplot2)

## plot data with Cost on x-axis and Popularity on y-axis. Add jitter for readability. Set point shape as Star of David for Hannukah. Add smooth trendline.
ggplot(data, aes(x=Cost, y=ï..Popularity))+geom_jitter(shape=11)+geom_smooth(se=FALSE)
