library(dplyr)

# Masukan data
data(iris)

# 1. Tampilkan data Sepal.Lenght
iris$Sepal.Length

#2. Sebutkan tipe data tiap kolom
str(iris)

#3. Buat Variabel Baru
iris <- iris %>%
  mutate(
    Turunan = ifelse(Sepal.Width > 3, "Besar","Kecil")
  )
head(iris)

#4. Ubah Variabel Turunan Menjadi Sepal
iris <- iris %>%
  rename(Sepal = Turunan)
head(iris)

#5. Ambil data dengan sepal bernilai besar dari species virginica
hasil_filter <- iris %>%
  filter(Sepal== "Besar", Species == "virginica")

hasil_filter

#6. Cek jumlah species dalam data
table(iris$Species)

#7. Pecah data iris menjadi 3 data frame 

data_setosa <- iris %>%
  filter(Species == "setosa")
data_versicolor <- iris %>%
  filter(Species == "versicolor")
data_virginica <- iris %>%
  filter(Species == "virginica")

data_setosa
data_versicolor
data_virginica

#8. Urutkan data berdasarkan Sepal.Width (dari setiap data frame )

data_setosa <- iris %>%
  arrange(Sepal.Width)
data_versicolor <- iris %>%
  arrange(Sepal.Width)
data_virginica <- iris %>%
  arrange(Sepal.Width)

data_setosa
data_versicolor
data_virginica