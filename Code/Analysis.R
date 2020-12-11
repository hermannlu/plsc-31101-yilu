num <- new_potus %>%
  count(date > "2008-1-30")
pie(num$n, labels = num$`date > "2008-1-30"`, clockwise = T, main = "Public remarks after 2008")

num1 <- new_potus %>%
  count(date < "1991-12-27")
pie(num1$n, labels = num1$`date < "1991-12-27"`, clockwise = T, main = "Public remarks before 1991")

num_speaker <- new_potus %>%
  count(speaker) %>%
  slice_max(n, n=10)
view(num_speaker)

ggplot(data = num_speaker, aes(x = reorder(speaker, n), y = n)) + geom_bar(stat = "identity") + theme(axis.text.x = element_text(
  angle = 45, size = 9, hjust = 1))+xlab("Speakers")+ylab("Number of docs")+
  ggtitle("10 speakers who talked the most about socialism")

num2 <- new_potus %>%
  count(party == "Republican")
pie(num2$n, labels = num2$`party == "Republican"`, clockwise = T, main = "Public remarks made by GOP Presidents")

num3 <- new_potus %>%
  filter(!(speaker == "Donald J. Trump")) %>%
  count(party == "Republican")
pie(num3$n, labels = num3$`party == "Republican"`, clockwise = T, main = "Public remarks made by GOP Presidents/without Trump")

wordcount <- function(speakers){
  address <- new_potus %>%
    filter(speaker == speakers) %>%
    select(text) %>%
    unlist() %>%
    str_split("\n")
  address <- unlist(address)
  on_soc <- address[str_detect(address, "socialis")]
  
  on_soc <- Corpus(VectorSource(on_soc))
  on_soc <- DocumentTermMatrix(on_soc,
                               control = list(stopwords = TRUE,
                                              tolower = TRUE,
                                              removeNumbers = TRUE,
                                              removePunctuation = TRUE))
  freq <- colSums(as.matrix(on_soc))
  sums <- as.data.frame(freq)
  sums <- rownames_to_column(sums)
  colnames(sums) <- c("term", "count")
  sums <- arrange(sums, desc(count))
  head <- sums[1:75,]
  fin <- wordcloud::wordcloud(words = head$term, freq = head$count,
                              min.freq = 1000,
                              max.words=100, random.order=FALSE, rot.per = 0.3)
  
  return(fin)}

wordcount("Donald J. Trump")

wordcount("Barack Obama")

wordcount("Ronald Reagan")

wordcount("Jimmy Carter")