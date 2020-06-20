setwd("F:\\EXCEL R\\ASSIGNMENTS\\RECCOMENDATION SYSTEM")
library(recommenderlab)
library(caTools)
library(Matrix)
books_data <- read.csv("book.csv")
View(books_data)
class(books_data)
str(books_data)
table(books_data$Book.Title)
hist(books_data$Book.Rating)
book_matrix <- as(books_data,'realRatingMatrix')
View(book_matrix)

###popularity based
book_recommend_model <- Recommender(book_matrix,method='POPULAR')


recommended_items1 <- predict(book_recommend_model, book_matrix[415], n=5)
as(recommended_items1, "list")


book_recomm_model2 <- Recommender(book_matrix, method="UBCF")
#Predictions for two users 
recommended_items2 <- predict(book_recomm_model2,book_matrix[410:414], n=5)
as(recommended_items2, "list")
