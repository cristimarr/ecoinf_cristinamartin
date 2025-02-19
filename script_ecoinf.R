#install.packages("ggplot2")
library(ggplot2)
df <- read.csv(file = "../ecoinf_cristinamartin/peso_altura_bellota.csv")

ggplot(df, aes(x = peso_bellota, y = altura_plantula)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, color = "aquamarine1") +
  labs(x = "Peso de la Bellota",
       y = "Altura de la Plántula")

