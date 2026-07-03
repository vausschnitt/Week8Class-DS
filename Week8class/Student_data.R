#week 8 ---- put on github
student_data<- read.csv("C:/UTP_Assignment/Sem_5/Data_Science/Exerc/Week8class/student_data.csv")
View(student_data)
#student fail----
student_fail<- student_fail<- student_data[student_data$final_exam_mark< 40,]
View(student_fail)

#arrange ----
mydata1<- student_data %>% filter(final_exam_mark< 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

mydata2<- student_data %>% filter(final_exam_mark< 40) %>% arrange(final_exam_mark)
View(mydata2)

#select func----
mydata2 <- student_data%>% select(student_id,coursework_mark,final_exam_mark)
View(mydata2)

#glimpse func ----
glimpse(student_data)

#mutate func----
mydata4 = student_data%>% mutate(Total_Mark=(coursework_mark+ final_exam_mark/200*100))
View(mydata4)
glimpse(mydata4)

#Descriptive Stats----
data(iris)
View(iris)
head(iris)
tail(iris)
str(iris)

min(iris$Sepal.Length) #this produces 4.3
max(iris$Sepal.Length) #this produces 7.9
range(iris$Sepal.Length)
min(data$Petal>Lenght) #this produces 4.3
max(data$Petal.Length) #this produces 7.9
range(iris$Petal.Length)

summary(iris)

#quantile_----
A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
Sort_A<-sort(A)
IQR(A)

#counting column and row
nrow(iris)
ncol(iris)

# Histogram of Sepal Length----
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
 xlab = "Sepal Length (cm)",
 ylab = "Frequency",
 col = "lightblue",
 border = "black")

# Boxplot by Species----
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        col = c("lightgreen", "lightpink",
                "lightyellow"))

# Scatter Plot----
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = as.numeric(iris$Species),
     pch = 19)
legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)

#boxplot data----
data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")
summary(data)
IQR(data)
