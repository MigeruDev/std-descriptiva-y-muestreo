# Soluciones para las tareas de estadística descriptiva y muestreo.
# Creado por: Miguel Angel Macias Narvaez

# ---------------------------------------------------------------
# Librerías Requeridas
# ---------------------------------------------------------------
# install.packages("ggplot2") # Ejecutar solo la primera vez
library(ggplot2)

# ---------------------------------------------------------------
# Tarea 1: Análisis estadístico de un vector
# ---------------------------------------------------------------

#' Analiza un vector numérico y devuelve estadísticas básicas.
#'
#' @param input_vector Vector entero a analizar.
#' @return Una lista que contiene media, mediana, moda, varianza y desviación estándar muestral.
analyze_vector <- function(input_vector) {
  # Media
  mean_val <- mean(input_vector)
  # Mediana
  median_val <- median(input_vector)
  # Moda (valor con la frecuencia más alta)
  freq_table <- table(input_vector)
  # En caso de que todos los números sean únicos, devuelve el primero.
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

# --- Ejecución Tarea 1 ---
# Generar un vector aleatorio de tamaño 10
my_vector <- sample(1:100, 10, replace = TRUE)
cat("Vector generado aleatoriamente:", my_vector, "\n")

# Analizar el vector e imprimir resultados
analysis_results <- analyze_vector(my_vector)
print(analysis_results)

# Generar un diagrama de caja con ggplot2 y mostrarlo
print(
  ggplot(data.frame(valores = my_vector), aes(x = "", y = valores)) +
    geom_boxplot(fill = "skyblue", color = "black", alpha = 0.7) +
    geom_jitter(color = "darkgray", width = 0.1, alpha = 0.8) +
    stat_summary(
      fun = mean,
      geom = "point",
      shape = 18,
      size = 4,
      color = "red"
    ) +
    labs(
      title = "Análisis Descriptivo del Vector",
      subtitle = "Boxplot con Media (♦) y Puntos de Datos",
      y = "Valores",
      x = NULL
    ) +
    theme_minimal()
)


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

# --- Ejecución Tarea 2 ---
# Calcular el tamaño de la muestra con los parámetros proporcionados
n_result <-
  calculate_sample_size(Z = 1.96,
                        p = 0.95,
                        q = 0.05,
                        N = 1068,
                        e = 0.10)
print(paste("Tamaño de muestra n:", n_result))

# ---------------------------------------------------------------
# Tarea 3: Cálculo de probabilidades
# ---------------------------------------------------------------

# Dado que P(A ∩ B) = 0.18 y P(A ∩ B^c) = 0.22, encontrar P(A).
# La probabilidad total del evento A se obtiene como:
# P(A) = P(A ∩ B) + P(A ∩ B^c)
# Por lo tanto, P(A) = 0.18 + 0.22 = 0.40

# --- Ejecución Tarea 3 ---
# Calcular y mostrar P(A) usando R
prob_A_B <- 0.18
prob_A_notB <- 0.22
prob_A <- prob_A_B + prob_A_notB
print(paste("P(A) =", prob_A))