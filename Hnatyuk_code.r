# 2.5 Блоки даних або датафрейми

data1 <- c(101, 102, 103, 104)
data2 <- c("Lviv", "Kyiv", "Kharkiv", NA)
data3 <- c("79000", "01000", "64000", "00000")
data4 <- c(TRUE, FALSE, TRUE, FALSE)

alldata <- data.frame(data1, data2, data3, data4)

names(alldata) <- c("ID", "City", "PostID", "Check")

# 2.6 Списки
x1 <- 1:5
x2 <- c('Monday', 'Tuesday', 'Thursday', 'Wednesday','Friday')
x3 <- c(T, T, F, F, T)
y <- list(daynumber=x1, day=x2, order=x3)

slobozan <- list(
    Kharkivskaobl = list(
        mista = c(
            'Kharkiv' = 1440676,
            'Izum' = 53223,
            'Krasnograd' = 27600,
            'Bohoduxiv' = 17653,
            'Zmijiv' = 16976,
            'Liubotyn' = 25700,
            'Balakliia' = 32117,
            'Lozova' = 71500
            ),
        naselenia = 2560948,
        oblcentr = 'Kharkiv'
    ),
    Sumskaobl = list(
        mista = c(
            'Sumy' = 273984,
            'Okhtyrka' = 49431,
            'Trostianets' = 23370,
            'Konotop' = 93671,
            'Shostka' = 80389
        ),
        naselenia = 1164619,
        oblcentr = 'Sumy'
    ))


# 6.1 Побудова 3d графіка

x <- seq(-10, 10, length.out=50)
y <- x
rotsinc <- function(x, y) {
    sinc <- function(x) { y <- sin(x) / x; y}
    10 * sinc( sqrt(x^2+y^2) )
}
z <- outer(x, y, rotsinc)
persp(x, y, z, theta=20, phi=50, shade=0.3, col="lightblue")