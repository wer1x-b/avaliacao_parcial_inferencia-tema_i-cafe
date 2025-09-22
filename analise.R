setwd("C:/Users/wer1x/Downloads/avaliacao_parcial_inferencia-tema_i-cafe")

# Dados
dados <- read.csv("cafe_dados.csv")
marca_A <- dados$cafeina_mg[dados$modelo == "A"]
marca_B <- dados$cafeina_mg[dados$modelo == "B"]

# 1) Médias e ICs
t.test(marca_A, conf.level = 0.90)
t.test(marca_A, conf.level = 0.95)
t.test(marca_A, conf.level = 0.99)

t.test(marca_B, conf.level = 0.90)
t.test(marca_B, conf.level = 0.95)
t.test(marca_B, conf.level = 0.99)

# 2) Diferença entre médias
t.test(marca_A, marca_B, conf.level = 0.90)
t.test(marca_A, marca_B, conf.level = 0.95)
t.test(marca_A, marca_B, conf.level = 0.99)

# 3) Variâncias e ICs
var_test_A <- var(marca_A)
n_A <- length(marca_A)
alpha <- 0.05
chi_lower_A <- qchisq(alpha/2, df = n_A-1, lower.tail = FALSE)
chi_upper_A <- qchisq(1-alpha/2, df = n_A-1, lower.tail = FALSE)
c((n_A-1)*var_test_A/chi_lower_A, (n_A-1)*var_test_A/chi_upper_A)

var_test_B <- var(marca_B)
n_B <- length(marca_B)
c((n_B-1)*var_test_B/chi_lower_A, (n_B-1)*var_test_B/chi_upper_A)

# 4) Razão de variâncias
var.test(marca_A, marca_B, conf.level = 0.90)
var.test(marca_A, marca_B, conf.level = 0.95)
var.test(marca_A, marca_B, conf.level = 0.99)

# 5) Proporções de aprovação
prop.test(x = 78, n = 120, conf.level = 0.90)
prop.test(x = 78, n = 120, conf.level = 0.95)
prop.test(x = 78, n = 120, conf.level = 0.99)

prop.test(x = 69, n = 120, conf.level = 0.90)
prop.test(x = 69, n = 120, conf.level = 0.95)
prop.test(x = 69, n = 120, conf.level = 0.99)

# 6) Diferença entre proporções
prop.test(x = c(78, 69), n = c(120, 120), conf.level = 0.90)
prop.test(x = c(78, 69), n = c(120, 120), conf.level = 0.95)
prop.test(x = c(78, 69), n = c(120, 120), conf.level = 0.99)

