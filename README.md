## Short Description

This project seeks to investigate the US politicians' reference to "socialism": their frequencies and conceptions towards the word "socialism"

## Dependencies

1. R, 3.6.1
2. Package - tidyverse
3. Package - rvest
4. Package - stringr
5. Package - purrr
6. Package - lubridate
7. Package - tm
8. Package - wordcloud

## Files 

#### /
1. Narrative.Rmd: Provides a 3-5 page narrative of the project, main challenges, solutions, and results.
2. Narrative.pdf: A knitted pdf of 00_Narrative.Rmd.
3. Slides.pptx: Slides for lightning talk.

#### Code/
1. collect_data.R: Collects raw data from the American Presidency Project by scraping necessary urls.
2. Processing_data.R: Processes those urls and transform them into meaningful dataframes for subsequent analysis. Dataframes exported to the file potus.csv
3. Analysis.R: Conducts descriptive analysis of the data, producing relevant tables and visualizations.

#### Data/
1. 
2. potus.csv: Contains data from the document urls 

#### Results/
1. Frequency across time.png: Graphs the number of public remarks mentioning "socialism" in different time periods
2. Who talks about socialism most.png: 
3. Trump.png: Visualizes the most frequent terms that Trump used when talking about socialism
4. Obama.png: 
5. Reagan.png

## More Information

Author name: Yi Lu
Email: lu114514[at]uchicago.edu

Das ist das Ende! (This is the end!)
