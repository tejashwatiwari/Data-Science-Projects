install.packages("twitteR")
install.packages("ROAuth")
library(ROAuth)
library("twitteR")

#REPLACE '####' with the appropriate values from your twitter app
consumerKey='QyEgR08pjV0cnD2d2lD43lobg'
consumerSecret='gk9Bt7KNCSh6OcWElmQOlbuqGzuL4hw27tFoHeNlwAyEhtRKRo'
accessToken='2497957705-6WDZeHv7QzuPmkNA13E3ZZ8fszeZuMQ3B3DtVDX'
accessTokenSecret= '0SMY2KWcXPDPYYUcTD3A6mTswCKFFd5LjKVPg7BRN7IUi'

#Connect to twitter
setup_twitter_oauth(consumerKey,consumerSecret,accessToken,accessTokenSecret)

#Extract Tweets !
tweets<-searchTwitter("oddeven", n=5, lang="en")
tweets
#Post Tweet !
tweet("A tweet using R Studio!")
tweets
