##chartdemo (PLOT 창에 나타남)

#파이차트 
x <- c(21, 62, 10, 53)
city <- c("London", "New York", "Singapor", "Mumbai")
pie(x,city)

# 바 차트
barplot(x)

#히스토그램
hist(c(9,13,21,8,22,36,21,12,41,31,33,18)
     ,xlab="weight"
     ,ylab="count"
     ,col="green"
     ,border="Dark green")

#선그래프
plot(c(7,12,28,3,41)
     ,type = "o")

#주식차트(확인필)
input <- mtcars[,c("mpg","cy1")]
print(head(input))
boxplot(mpg ~cy1,data=mtcars
        ,xlab="Numbers"
        ,Ylab="Miles"
        ,main="mileage data"
        )

