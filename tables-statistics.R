library(ggplot2)
install.packages("ggplot2")
'''titanic = read.csv('Titanic.csv', stringsAsFactors=FALSE)

titanic$Name = factor(titanic$Name)

titanic$Pclass = factor(titanic$Pclass)
titanic$Survived = factor(titanic$Survived)
titanic$Sex = factor(titanic$Sex)
titanic$Age = factor(titanic$Age)
titanic$SibSp = factor(titanic$SibSp)
titanic$Parch = factor(titanic$Parch)
titanic$Ticket = factor(titanic$Ticket)
titanic$Fare = factor(titanic$Fare)
titanic$Cabin = factor(titanic$Cabin)
titanic$Embarked = factor(titanic$Embarked)

ggplot(titanic, aes(x=Pclass, color=Sex, fill=Sex)) + geom_bar(position='dodge') + theme_bw() + theme(legend.position='top')
ggplot(titanic, aes(x=Pclass, y=Age, fill=Sex)) + geom_boxplot(outlier.colour='dark orange', outlier.shape=4, notch=TRUE) + coord_flip() + theme_bw() + ggtitle('Boxplot to plot Age vs Passenger Class')
mydata = mtcars[, c(1,3,4,5,6,7)]
head(mydata)

cormat = round(cor(mydata),2)
head(cormat)

library(reshape2)
melted_cormat = melt(cormat)
head(melted_cormat)
ggplot(data=melted_cormat, aes(x=Var1, y=Var2, fill=value)) + geom_tile()'''

library(readxl)
dominos = read_excel('~/Desktop/Day1/Dominos.xlsx')
View(dominos)

t.test(Dominos$Time,alternative='less',mu=173.62)


