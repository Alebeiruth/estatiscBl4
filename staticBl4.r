#biblioteca ggplot2

install.packages("ggplot2")
library(ggplot2)

##histograma
resistencia <- c(11.5, 12.1, 9.9, 9.3, 7.8, 6.2, 6.6, 7.0, 13.4,
                 17.1, 9.3, 5.6, 5.7, 5.4, 5.2, 5.1, 4.9, 10.7, 3.7,
                 15.2, 8.5, 4.2, 4.0, 3.9, 3.8, 3.6, 3.4, 20.6, 3.6,
                 25.5, 13.8, 12.6, 13.1, 8.9, 8.2, 10.7, 14.2, 3.6,
                 7.6, 5.2, 5.5, 5.1, 5.0, 5.2, 4.8, 4.1, 3.8, 3.6)

barplot(resistencia, ylab = "Frequencia", xlab = "Resistencia")

freq <- table(resistencia)
freq

barplot(freq, ylab = "Frequencia", xlab = "Resistencia")

hist(resistencia)
hist(resistencia, freq = FALSE, col = c("green"))


##quartil
corrosao <- c(40, 52, 55, 60, 70, 75, 85, 90, 90,
              92, 94, 94, 95, 98, 100, 115, 125, 125)

quantile(corrosao, type = 7)

##grafico de barras e de densidade

install.packages("ggplot2")
library(ggplot2)

##data frame
df <- data.frame(tratamento = c("1", "2", "3"), espessura = c(2, 3.1, 4.2))

##grafico de barras
ggplot(df, aes(y = espessura, x = tratamento)) + geom_col(fill = "red") + ggtitle("Grafico")

#carregamento dos dados
data("iris")

##grafico de densidade
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + geom_density(alpha = .5) + ggtitle("Grafico2")

##grafico boxplot      
corrosao2 <- c(40, 52, 55, 60, 70, 75, 85, 90, 90,
              92, 94, 94, 95, 98, 100, 115, 125, 125)                                             

boxplot(corrosao2)

df <- data.frame(corrosao2)
ggplot(df, aes(x = corrosao2)) + geom_boxplot()
