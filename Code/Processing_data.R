scrape_docs <- function(URL){
  doc <- read_html(URL)
  
  speaker <- html_nodes(doc, ".diet-title a") %>% 
    html_text()
  
  date <- html_nodes(doc, ".date-display-single") %>%
    html_text() %>%
    mdy()
  
  text <- html_nodes(doc, "div.field-docs-content") %>%
    html_text()
  
  all_info <- list(speaker = speaker, date = date, text = text)
  
  return(all_info) 
  
}


obtain <- function(url){
  page <- read_html(url)
  
  party <- html_nodes(page, ".f-item") %>%
    html_text()
  
  get <- list(party = party[4])
  
  return(get)
  
}

maga <- map(no_socialism, stronk) 

maga <- unlist(maga) 

potus_stronk <- map_dfr(maga, scrape_docs)

potus_party <- map(no_socialism, party)

potus_party <- unlist(potus_party)

party_name <- map_dfr(potus_party, obtain)

new_potus <- data.frame(party_name, potus_stronk)
