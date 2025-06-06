### **INSTRUCCIONES GENERALES**
- Puede ser entregado en grupos.
- Puede **consultar** preguntas сοn otras personas, pero tiene que reflejar en la tarea que el trabajo es **propio y no debe** replicar el trabajo de otros grupos.
- La calificación máxima de la tarea es de 10 puntos.

---

### **DETALLES TÉCNICOS**
- Subir solamente los archivos requeridos a la plataforma del curso.
- Los archivos deben ser subidos a la plataforma del curso solamente por **UN integrante del grupo**.
- Por favor **marcar** los archivos interna y externamente con sus **nombres completos (2 nombres y 2 apellidos, si aplica)**. Tenga en cuenta las pautas específicas para marcar los archivos. Evite usar caracteres especiales como tildes.

---

### **DETALLES ESPECÍFICOS DEL SCRIPT EN R**
- Indicar claramente los **paquetes** que se necesitan para correr el script.
- Por favor colocar **comentarios** que faciliten el entendimiento del script de R. Recuerde que una buena documentación de los proyectos caracteriza un trabajo profesional.
- Por favor en la medida de lo posible usar códigos simples, organizados y que sean fáciles de entender. Esto facilita la evaluación y búsqueda de posibles errores.

---

### **TAREA**
1. Dado un **vector cualquiera** de números enteros de tamaño 10:
   a. Escriba una función en R que permita obtener el promedio, la mediana, la moda, la varianza y desviación estándar muestral para cualquier vector. Muestre los resultados de su función para el vector dado.
   b. Genere un gráfico de caja (boxplot) del vector dado.

2. Escriba una función que permita obtener el tamaño de una muestra usando la siguiente fórmula:
   $$n = \frac{Z^2 \cdot N \cdot p \cdot q}{e^2(N-1) + (Z^2 \cdot p \cdot q)}$$
   Donde cada variable se define como:
   * [cite_start]**Z**: nivel de confianza (correspondiente con tabla de valores de Z) [cite: 1]
   * [cite_start]**p**: Porcentaje de la población que tiene el atributo deseado [cite: 1]
   * [cite_start]**q**: Porcentaje de la población que no tiene el atributo deseado = 1-p [cite: 1]
     * [cite_start]*Nota: cuando no hay indicación de la población que posee o no el atributo, se asume 50% para p y 50% para q*. [cite: 1]
   * [cite_start]**N**: Tamaño del universo (Se conoce puesto que es finito) [cite: 1]
   * [cite_start]**e**: Error de estimación máximo aceptado [cite: 1]
   * [cite_start]**n**: Tamaño de la muestra [cite: 1]

   La función debe permitir obtener el valor de la muestra para cualquier valor de Z, p, q, N, e. Obtenga el valor de la muestra dado los siguientes valores:
   * **Z** = 1.96
   * **p** = 95%
   * **q** = 5%
   * **N** = 1068
   * **e** = 10%

3. Dado $P(A \cap B) = 0.18$ y $P(A \cap B^c) = 0.22$. Encontrar $P(A)$.

---

### **REPORTE**
- Responda las preguntas en el reporte "**reporte_apellido1_apellido2.pdf**".
- El reporte no necesita ninguna estructura en particular, con responder las preguntas es suficiente.
- El soporte de sus respuestas debe salir de su script de R, puede incluir códigos, resultados, gráficos o pantallazos en el reporte.

---

### **ENTREGA DE LA TAREA**
Subir a la plataforma del curso:
- `reporte_apellido1_apellido2_apellido3.pdf`
- `prog_principal_apellido1_apellido2_apellido3.R`

¡Revisite la sección de Detalles Técnicos al comienzo de las instrucciones antes de subir los archivos!
