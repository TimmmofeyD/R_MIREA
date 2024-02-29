# Часть 1 -----------------------------------------------------------------

# 1 Задание
x <- 2
y <- 4

temp <- x
x <- y
y <- temp

print(x)
print(y)

# 2 Задание

x <- 3.5
y <- "2,6"
z <- 1.78
h <- TRUE

typeof(x) 
typeof(y) 
typeof(z) 
typeof(h) 

h <- as.integer(h)
typeof(h) 

y <- as.numeric(gsub(",", ".", y))
typeof(y) 

x <- as.character(x)
typeof(x) 

# 3 Задание

dohod <- 1573

dohod <- log(dohod)

print(dohod)

# 4 Задание
writeLines("15", "variant.txt")

variant <- readLines("variant.txt")

variant <- as.integer(variant)

result <- 2 * variant - 1
print(result)



# Часть 2 -----------------------------------------------------------------

# 1 Задание

g <- c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA, 9, 4, 16, 2, 0)

# 1 элемент вектора
print(g[1])

# последний элемент вектора
print(tail(g, n = 1))

# с 3 по 5 включительно
print(g[3:5])

# равны 2
print(g[!is.na(g) & g == 2])

# больше 4
print(g[!is.na(g) & g > 4])

# кратны 3
print(g[!is.na(g) & g %% 3 == 0])

# больше 4 и кратны 3
print(g[!is.na(g) & g > 4 & g %% 3 == 0])

# меньше 1 или больше 5
print(g[!is.na(g) & (g < 1 | g > 5)])

# индексы элементов равны 0
print(which(g == 0))

# не меньше 2 и не больше 8
print(which(g >= 2 & g <= 8))

# по возрастанию без 2
print(sort(g[!is.na(g) & g != 2]), sep = ", ")

# 2 Задание
vector <- c(1, 2, 3, 4, 5)

vector[length(vector)] <- NA

print(vector)

# 3 Задание
vector <- c(1, NA, 3, NA, 5)

indices_missing <- which(is.na(vector))

print(indices_missing)

# 4 Задание
count_missing <- sum(is.na(vector))

print(count_missing)

# 5 Задание
respondent_id <- seq(1, 100)

print(respondent_id)

# 6 Задание
countries <- rep(c("France", "Italy", "Spain"), each = 5)

years <- rep(c("2019", "2020", "2020", "2018", "2017"), each = 3)

print(countries)
print(years)

# 7 Задание
income <- c(10000, 32000, 28000, 150000, 65000, 1573)

average_income <- sum(income) / length(income)

income_class <- ifelse(income <= average_income, 0, 1)

print(income_class)

# 8 Задание
x <- c(3, 15, 7, 4, 5, 12, 20)

write.table(x, file = "coords.txt", row.names = FALSE, col.names = FALSE)

x <- as.numeric(readLines("coords.txt"))

N <- length(x)

P <- 4.43

Lp_norm = sum(abs(x)^P)^(1/P)

writeLines(as.character(Lp_norm), "result.txt")

# 9 Задание
x <- as.numeric(readLines("coords.txt"))

N <- length(x)

if (N <= 1) {
  
  cat("И как я это посчитаю?", N, "\n")
  
} else if (N == 2) {
  
  cat("Первый вектор:", x, "\n")
  cat("Второй вектор:", x, "\n")
  
} else {
  
  delta_x <- diff(x)
  
  delta_2_x <- diff(delta_x)
  
  delta_2_x <- c(NA, delta_2_x) # добавил местный нан чтобы длины векторов сопадали иначе он просто копировал первое значение другого не придумал как красиво сделать)
  result <- cbind(delta_x, delta_2_x)
  
  colnames(result) <- c("Первая разность", "Вторая разность")
  write.table(result, file = "diff_vectors.txt", col.names = TRUE, row.names = FALSE)
}

