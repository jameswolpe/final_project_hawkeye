## March 21

Found data on historical backgammon data if i want to use it to make a
shinyapp. 
Did research if a machine learning could actually beat the sportsbooks for different sports.

## March 23 begining of class
Decided on working with tennis  and found two data sets for it. One small data set that makes some hayk-eye data available (found on github from a CrowdANALYTIX competition) and a crowd sourced data set that logs tennis matches. The goal will be to analize forced and unforced errors by analyzing if "Wardlaw directionals" work.

## March 23 end of class
Spent much of class figuring out setting up git on my new computer. Once completed I read some work from (https://github.com/Laurae2/Laurae) and began to decide how to classify directional shots. Realized I need a category to classify shot quality based on speed and topspin.

## March 28 begining of class
Read "pressure tennis" and met with my coach on ways to classify directionals, decided to work with crowd souced data, and found a new data set of a Nadal, Djokovic match.

## March 28 end of class
Loaded in the data and began taking notes on how it was classified, added to a plot I found online to include directional lines in red.

## March 30 begining of class
In my note book drew out all possible point combinations and wrote out their codes, discovered this will be a little more complicated as I will need to look at 3 consecutive shots in a sequence rather than just two (except on the ultimate shot and the serve) to know where the player of interest was located when the penultimate shot of interest comes.

## March 30 end of class 
Worked on cleaning up the data and making new variables (shortened the data set to just one match for the time being to make it easier), I also finished writing up the classification of shots sections.

## April 6th begining of class
Met with my coach and decided that directionals are a little ambitious, while I will still attempt to complete this task I will begin playing around with the data set and making a comparison of atp and wta points and players. I also combined and began cleaning up data that inclued more onformation about the players.

## April 6th end of class
Worked on adding the height variable to players but found that player_id was not in the match data (will have to unite first and last name and join by name). Also began grouping rallies by shot length to compare atp and wta. Fixed the problem of filtering out forced errors off of serve for my hawkeye data.
