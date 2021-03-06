## Short Description

This project seeks to investigate the US politicians' public reference to "socialism": their conceptions towards and frequencies of mentioning the word "socialism" in public remarks.

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
1. links.csv: Contains raw data of unprocessed urls.
2. potus.csv: Contains data from the document urls with 4 variables:
- *party*: politcal parties that the presidents affiliated with.
- *speaker*: politicians/organizations who delivered the public remarks.
- *date*: dates on which the public remarks delivered.
- *text*: content of the public remarks.

#### Results/
1. Public remarks ante 1991.png: Graphs the proportion of public remarks mentioning "socialism" before the end of 1991.
2. Public remarks post 2008.png: Graphs the proportion of public remarks mentioning "socialism" starting from 2008.
3. Who talks about socialism most.png: Graphs the 10 people who most frequently talked about "socialism" in their public remarks. 
4. Remarks gop.png: Graphs the proportion of public remarks mentiong "socialism" made by Republican presidents.
5. Remarks gop no trump.png: Graphs the proportion of public remarks mentioning "socialism" made by all Republican presidents except Trump.
6. Trump.png: Visualizes the most frequent terms that Donald J. Trump used when talking about socialism.
7. Obama.png: Visualizes the most frequent terms that Barack Obama used when talking about socialism.
8. Reagan.png: Visualizes the most frequent terms that Ronald Reagan used when talking about socialism.
9. Carter.png: Visualizes the most frequent terms that Jimmy Carter used when talking about socialism.

## More Information

Author name: Yi Lu

Email: lu114514@uchicago.edu

Das ist das Ende! (This is the end!)
