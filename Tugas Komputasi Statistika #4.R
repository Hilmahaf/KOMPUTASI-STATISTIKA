# SOAL 1: POISSON 
lambda <- 3
x <- 0:12
pmf <- dpois(x, lambda)

# Perhitungan
p_kurang_sama_4 <- ppois(4, lambda = lambda)
p_lebih_sama_5  <- 1 - p_kurang_sama_4

#Print Hasil
cat("P(X <= 4) =", round(p_kurang_sama_4, 4), "\n")
cat("P(X >= 5) =", round(p_lebih_sama_5, 4), "\n")

#Grafik
plot(x, pmf, type='h', lwd=3,
     col = ifelse(x >= 5, "red", "blue"),
     main = 'Poisson(λ=3)', xlab = 'k', ylab = 'P(X=k)')
legend("topright", legend = c("X < 5", "X >= 5"),
       col = c("blue", "red"), lwd = 3, bty = "n")


# SOAL 2: HIPERGEOMETRIK
N <- 100   # ukuran populasi
K <- 20    # jumlah bola merah
n <- 10    # ukuran sampel

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=", N, ", K=", K, ", n=", n, ")"),
     xlab = "k (banyak bola merah dalam sampel)", ylab = "P(X=k)")


#SOAL 3 : BINOMIAL
n <- 15; p <- 0.4; x <- 0:n
pmf <- dbinom(x, size = n, prob = p)      # rumus teoretis

set.seed(123)
sim <- rbinom(1000, size = n, prob = p)   # simulasi 1000 kali

hist(sim, breaks = seq(-0.5, n + 0.5, by = 1), freq = FALSE,
     main = "Binomial(15, 0.4)", xlab = "k", ylab = "P(X=k)")
points(x, pmf, type = "h", lwd = 3, col = "red")