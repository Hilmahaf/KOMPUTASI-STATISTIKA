#Komputasi Statistika

#Vector Numeric
V_numeric <- c(2.5,3.7,4.5,5.5)
V_numeric

#Vector Integer
V_integer <- c(4L,3L,2L,1L)
V_integer

#Vector Logical
V_logical <- c(FALSE,TRUE,TRUE,FALSE)
V_logical

#Vector Character
V_character <- c("Barbie","Hermione","Ron","Harry")
V_character

#Vektor Kolom
angka <- c(1,2,3,4,5)
V_kolom <- matrix(angka, ncol= 1)
V_kolom

#Vektor Baris
V_Baris <- matrix(angka, nrow = 1)
V_Baris

#Matrix
Matriks <- matrix(6:21,nrow = 4,ncol = 4)
Matriks

#Array 4D
Arrays <- array(1:16,dim = c(2,2,2,2))
Arrays

#Data Frame
df <- data.frame(
  Nama = c("Qeis","Hutami", "Syirin","Syifa"),
  NIM = c(050,030,020,034), 
  Lulus = c(TRUE, TRUE,FALSE,FALSE),
  Aktif = c(TRUE,FALSE,TRUE,FALSE)
)
df

#List
Listku <- list(
  V_num = V_numeric,
  V_int = V_integer,
  DF = df,
  List2 = list(
    V_num = V_numeric,
    V_int = V_integer,
    DF = df,
    matriks = Matriks,
    V_row = V_Baris
  )
)
  Listku
