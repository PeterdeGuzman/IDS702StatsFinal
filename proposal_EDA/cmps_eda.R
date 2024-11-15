# Packages
library(tidyverse)
library(ggplot2)
library(formattable)

# Load data

load("/Users/pdeguz01/Documents/git/Data/2020 CMPS/DS0001/39096-0001-Data.rda")

data <- da39096.0001


# one plot for each of your outcome variables by themselves.
# Be sure to use appropriate axis labels
# plot outcome var #Q29 interested in politics
table(data$Q29)

unwtd_tableQ29 <- data %>% count(Q29) 
unwtd_tableQ29 <- unwtd_tableQ29 %>% mutate('pct' = (n/sum(n, na.rm=TRUE)))
wtd_tableQ29 <- data %>% count(Q29, wt=WEIGHT)
wtd_tableQ29 <- wtd_tableQ29 %>% mutate('pct' = (n/sum(n, na.rm=TRUE)))

ggplot(wtd_tableQ29, aes(x=Q29, y = pct)) +
  geom_bar(stat="identity", fill = "orange") +
  geom_text(aes(label=percent(pct)), vjust=1.6, color="white", size =3.5) +
  labs(title = "Reported Interest in Politics", 
       x = "Level of Interest", y = "Percent (Weighted)") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

# Exploratory plots for your primary relationship of interest (dependent variable and primary independent variable)
# Be sure to use appropriate axis labels


# plot relationship
# tile plot between Q271 (independent) and Q29 (dependent)

tile_table <-  data %>% group_by(Q29, Q271) %>%
  tally() %>%
  spread(Q29, n)

contingency_table <- table(data$Q29, data$Q271)
contingency_df <- as.data.frame(contingency_table)
contingency_df <- contingency_df %>% mutate(Share = (Freq/sum(Freq)))




ggplot(contingency_df, aes(x = Var1, y = Var2, fill = Share)) +
  geom_tile() +
  labs(title="Heatmap of Interest in Politics and Racial Identity", x = "Interest in Politics", y = "Importance of Racial Identity") +
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_continuous(low = "white", high = "blue", labels = percent_format(scale = 100)) 

