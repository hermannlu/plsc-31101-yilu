library(tidyverse)
library(rvest)
library(stringr)
library(purrr)
library(lubridate)
library(tm)
library(wordcloud)

no_socialism <- c(
  "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100", "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100&page=1", "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100&page=2", 
  "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100&page=3",
  "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100&page=4",
  "https://www.presidency.ucsb.edu/advanced-search?field-keywords=%22socialism%22&field-keywords2=&field-keywords3=&from%5Bdate%5D=&to%5Bdate%5D=&person2=&items_per_page=100&page=5")

stronk <- function(url){
  yes <- read_html(url)
  
  yes1 <- yes %>%  
    html_nodes("a") %>% 
    html_attr("href") 
  
  yes2 <- yes1[str_starts(yes1, "/documents")] 
  yes3 <- paste0("https://www.presidency.ucsb.edu", yes2)[-(1:4)] 
  return(yes3)
}

party <- function(url){
  coup <- read_html(url)
  
  coup1 <- coup %>%  
    html_nodes("a") %>% 
    html_attr("href")
  
  coup2 <- coup1[str_starts(coup1, "/people")] 
  
  coup3 <- paste0("https://www.presidency.ucsb.edu", coup2)[-1]
}


