# prog_principal_miguel_angel_macias_narvaez.R
#
# Soluciones para las tareas de estadística descriptiva y muestreo.
# No se requieren paquetes adicionales; se utilizan funciones base de R.

# ---------------------------------------------------------------
# Tarea 1: Análisis estadístico de un vector
# ---------------------------------------------------------------

#' Analiza un vector numérico y devuelve estadísticas básicas.
#' 
#' @param input_vector Vector entero a analizar.
#' @return Una lista que contiene media, mediana, moda, varianza y desviación estándar muestral.
#' @examples
#' analyze_vector(c(1, 2, 2, 3))
analyze_vector <- function(input_vector) {
  # Media
  mean_val <- mean(input_vector)
  # Mediana
  median_val <- median(input_vector)
  # Moda (valor con la frecuencia más alta)
  freq_table <- table(input_vector)
  mode_val <- as.numeric(names(freq_table)[which.max(freq_table)])
  # Varianza muestral
  variance_val <- var(input_vector)
  # Desviación estándar muestral
  sd_val <- sd(input_vector)
  # Devolver resultados en una lista
  return(list(
    mean = mean_val,
    median = median_val,
    mode = mode_val,
    variance = variance_val,
    sd = sd_val
  ))
}

# Vector de ejemplo de tamaño 10
my_vector <- c(2, 4, 4, 5, 7, 7, 7, 8, 9, 10)

# Analizar el vector e imprimir resultados
analysis_results <- analyze_vector(my_vector)
print(analysis_results)

# Generar un diagrama de caja del vector
boxplot(my_vector, main = "Boxplot del vector ingresado", ylab = "Values")

# ---------------------------------------------------------------
# Tarea 2: Cálculo del tamaño de la muestra
# ---------------------------------------------------------------

#' Calcula el tamaño de muestra usando la fórmula para poblaciones finitas.
#' 
#' @param Z Puntaje Z correspondiente al nivel de confianza deseado.
#' @param p Proporción de la población con el atributo.
#' @param q Proporción de la población sin el atributo (1 - p).
#' @param N Tamaño de la población.
#' @param e Error máximo de estimación permitido.
#' @return Tamaño de muestra requerido n.
calculate_sample_size <- function(Z, p, q, N, e) {
  numerator <- Z^2 * N * p * q
  denominator <- e^2 * (N - 1) + Z^2 * p * q
  n <- numerator / denominator
  return(n)
}

# Calcular el tamaño de la muestra con los parámetros proporcionados
n_result <- calculate_sample_size(Z = 1.96, p = 0.95, q = 0.05, N = 1068, e = 0.10)
print(paste("Sample size n:", n_result))

# ---------------------------------------------------------------
# Tarea 3: Cálculo de probabilidades
# ---------------------------------------------------------------

# Dado que P(A ∩ B) = 0.18 y P(A ∩ B^c) = 0.22, encontrar P(A).
# La probabilidad total del evento A se obtiene como:
# P(A) = P(A ∩ B) + P(A ∩ B^c)
# Por lo tanto, P(A) = 0.18 + 0.22 = 0.40
# Calcular y mostrar P(A) usando R
prob_A_B <- 0.18
prob_A_notB <- 0.22
prob_A <- prob_A_B + prob_A_notB
print(paste("P(A) =", prob_A))
