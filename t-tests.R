library(readxl)
dominos = read_excel('~/Desktop/Day1/Dominos.xlsx')
View(dominos)

t.test(Dominos$Time,alternative='less',mu=173.62)

One Sample t-test

data:  Dominos$Time
t = -4.2568, df = 29, p-value = 9.921e-05
alternative hypothesis: true mean is less than 173.62
95 percent confidence interval:
  -Inf 164.7089
sample estimates:
  mean of x 
158.789 
# Hypothesis: 9.921e-05 < 0.05, so accept alternative hypothesis. There is a reduction in drive thru times. 
t.test(Dominos$Time,mu=173.62)



t.test(titanic$Fare,alternative='less',mu=173.62)


# Determine if a car's mile per gallon is related to its horsepower.
# H0 = There is no correlation
# H1 = There is a correlation between mpg and horsepower
t.test(mydata$mpg,mydata$hp,alternative='two.sided')
Welch Two Sample t-test

data:  mydata$mpg and mydata$hp
t = -10.405, df = 31.479, p-value = 1.03e-11
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -151.3964 -101.7973
sample estimates:
  mean of x mean of y 
20.09062 146.68750 
# The p-value of 1.03e-11 < 0.05, so reject the null hypothesis. Therefore, there is a correlation.
