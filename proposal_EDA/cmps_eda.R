# Packages
library(tidyverse)
# Load data

load("/Users/pdeguz01/Documents/git/Data/2020 CMPS/DS0001/39096-0001-Data.rda")

data <- da39096.0001



# plot outcome var #Q29 interested in politics
table(data$Q29)

unwtd_tableQ29 <- data %>% count(Q29) 
unwtd_tableQ29 <- unwtd_tableQ29 %>% mutate('pct' = (n/sum(n, na.rm=TRUE)))
wtd_tableQ29 <- data %>% count(Q29, wt=WEIGHT)
wtd_tableQ29 <- wtd_tableQ29 %>% mutate('pct' = (n/sum(n, na.rm=TRUE)))

# plot relationship
# tile plot between Q271 (independent) and Q29 (dependent)

library(ggplot2)

contingency_table <- table(data$Q29, data$Q271)
print(contingency_table)
contingency_df <- as.data.frame(contingency_table)

ggplot(contingency_df, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title="Heatmap of Q29 and Q271", x = "Interest in Politics", y = "Importance of Racial Identity") +
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
