# Ejercicio 1

Imprimir los numeros del 1 al 100.

# Ejercicio 2

Imprimir los numeros del 100 al 1.

# Ejercicio 3

Imprimir los numeros pares del 1 al 100.

# Ejercicio 4

Tres hermanos acuerdan reunirse en un lugar específico. Cada uno de ellos está representado por un número, siendo 1 el hermano mayor y 3 el hermano menor. El día de la reunión, uno de los hermanos se retrasa. Sabiendo los números de los dos hermanos que llegaron a tiempo, determina el número del hermano que llegó tarde.

# Input
```
1 3
```

# Output
```
2
```

# Ejercicio 5

Dado un conjunto de números, imprime la suma alternada de los mismos. En otras palabras, imprime el resultado de sumar $(a_{1} - a_{2} + a_{3} - a_{4} + a_{5} - a_{6} + ...)$. Observa que los signos alternan entre positivo y negativo, comenzando con el signo positivo.

La primera linea del input es la cantidad de test que tendras que realizar, este numero esta en el rango de $1 \leq t \leq 1000$.

La primera linea de cada test contiene un numero entero entre $1 \leq n \leq 50$ que representa la cantidad de numeros que se van a sumar.

La segunda linea de cada test contiene $n$ numeros enteros $a_{1}, a_{2}, a_{3}, ..., a_{n}$ , estos numeros estan en el rango de $1 \leq a_{i} \leq 100$.


# Input
```
4
4
1 2 3 17
1
100
2
100 100
5
3 1 4 1 5

```

# Output
```
-15
100
0
10

```


# Ejercicio 6

Imprimir los numeros del 1 al 100, excepto los multiplos de 3 y 5.

# Ejercicio 7

Declarar un arreglo de 10 elementos e imprimir sus valores.

# Ejercicio 8

Declarar un arreglo de 10 elementos e imprimir sus valores en orden inverso.

# Ejercicio 9

Declarar un arreglo de 10 elementos e imprimir la suma de sus valores.

# Ejercicio 10

Declarar un arreglo de `n` elementos y buscar el mayor valor.

# Ejercicio 11

Declarar un arreglo de `n` elementos y buscar un valor `x` en el arreglo. En caso de encontrarlo, imprimir su posición, en caso de no encontrarlo, imprimir "No encontrado".

# Ejercicio 12
Crea un programa que cuente cuántas veces aparece una letra específica en una cadena.

## Input
```
Java es un lenguaje de programacion
a
```
## Output
```
5
```

## Ejercicio 13

Crea un programa que imprima la tabla de multiplicar del 1 al 10.

## Ejemplo de output
```
Tabla de multiplicación del 1:
1 x 1 = 1
1 x 2 = 2
1 x 3 = 3
...
1 x 10 = 10

Tabla de multiplicación del 2:
2 x 1 = 2
2 x 2 = 4
2 x 3 = 6
...
2 x 10 = 20

...
```

# Ejercicio 14

Dado un número entero `n`, realizar las siguientes operaciones:
- Si `n` es par, dividirlo entre 2.
- Si `n` es impar, multiplicarlo por 3 y sumar 1.
Repetir el proceso hasta que `n` sea 1.

# Ejercicio 15

Como objetivo este año, te propones leer la mayor cantidad de libros posibles. Hoy, tienes `t` minutos para leer. Tomas `n` libros de la biblioteca, cada uno con un tiempo de lectura $a_{i}$. ¿Cuál es la mayor cantidad de libros que puedes leer en `t` minutos?

# Input
```
4 5
3 1 2 1
```
La primera linea contiene dos enteros `n` y `t` que representan el número de libros y el tiempo que tienes para leer. La segunda linea contiene `n` enteros $a_{i}$ que representan el tiempo de lectura de cada libro.

# Ejercicio 16

Basado en el ejercicio anterior, ahora debes de seguir la siguiente regla: El orden de los libros no puede ser alterado. Es decir, si tomas el libro `i`, debes de leerlo antes que el libro `i+1`. Además, una vez que lees un libro, lo leerás completo. ¿Cuál es la mayor cantidad de libros que puedes leer en `t` minutos?
Con el objetivo de maximizar la cantidad de libros que puedes leer, puedes empezar a leer desde cualquier libro. Solo ten en cuenta que después de escoger un libro debes de leer los siguientes libros en orden.

# Input 
```
4 4
3 1 2 1
```
# Output
```
3
```

Tenemos 4 minutos y 4 libros por leer. Si empezamos a leer desde el primer libro que tiene un tiempo de 3 minutos, nos quedaran 1 minuto para leer el siguiente libro, por lo que solo podremos leer 2 libros en total. Si empezamos a leer desde el segundo libro que tiene un tiempo de 1 minuto, nos quedaran 3 minutos para leer el siguiente libro, al leer el libro 3 que tiene un tiempo de 2 minutos, nos quedaran 1 minuto para leer el siguiente libro, por lo que podremos leer 3 libros en total.

# Ejercicio 17

Dada una matriz de `n` x `m` elementos. Debes de encontrar el valor máximo de la matriz.

# Ejercicio 18

En la Universidad Nacional de Ingeniería, la red local entre los servidores no siempre funciona correctamente. Se descubrió que cuando se envían dos mensajes idénticos, estos se combinan, haciendo que ambos mensajes se conviertan en uno. En esta combinación, el final del primer mensaje coincide con el inicio del segundo, y esta superposición solo puede ocurrir si los caracteres son iguales.

Por ejemplo, si enviamos el mensaje `abrakadabra` de manera consecutiva, es posible que el resultado sea `abrakadabrabrakadabra` o `abrakadabrakadabra`.

Mientras se consulta a la empresa de soporte, debes proporcionar una solución temporal. Para ello, debes encontrar cuál podría ser el mensaje original. Dado el mensaje final, determina si este es el resultado de la mezcla de dos mensajes y, de ser así, identifica un posible mensaje original.

Aquellas situaciones donde los dos mensajes se sobreponen completamente uno sobre el otro, no son considerados mensajes erroneos. De manera similar si los dos mensajes se concatenan sin que exista una mezcla, tampoco son considerados mensajes erroneos (por ejemplo `abcabc`).

# Input
```
abrakadabrabrakadabra
```

# Output
```
YES
abrakadabra
```

# Input
```
ababababa
```

# Output
```
YES
ababa
```

# Input
```
abcabc
```

# Output
```
NO
```

# Input
```
tatbt
```

# Output
```
NO
```

# Ejercicio 18

Encuentras una matriz de `n` x `m` elementos. Cada elemento de la matriz es un número entero positivo uno consecutivo del anterior. De acuerdo a la forma en que se encuentran los elementos tendremos dos tipos de enumeración:
## Enumeracion por columnas

Las celdas son enumeradas comenzando por 1, de izquierda a derecha y en cada columna de arriba hacía abajo.

# Ejemplo

$$
\begin{bmatrix}
1 & 4 & 7 & 10 & 13 \\
2 & 5 & 8 & 11 & 14 \\
3 & 6 & 9 & 12 & 15 \\
\end{bmatrix}
$$

La matriz anterior tiene 3 filas y 5 columnas.

## Enumeracion por filas

Las celdas son enumeradas comenzando por 1, de arriba hacía abajo y en cada fila de izquierda a derecha.

# Ejemplo

$$
\begin{bmatrix}
1 & 2 & 3 & 4 & 5 \\
6 & 7 & 8 & 9 & 10 \\
11 & 12 & 13 & 14 & 15 \\
\end{bmatrix}
$$

Tu objetivo es encontrar el valor de la celda `a` en la enumeración por filas.

# Input
```
3
1 1 1
2 2 3
3 5 11
```
# Output
```
1
2
9
```
El primer numero `3` indica el número de casos de prueba. Cada caso de prueba tiene tres números enteros `n`, `m` y `a` que representan el número de filas, el número de columnas y el número de la celda a buscar en la enumeración por filas.

El primer caso de prueba tiene 1 fila, 1 columna y el número de celda a buscar es 1. El segundo caso de prueba tiene 2 filas, 2 columnas y el número de celda a buscar es 3. El tercer caso de prueba tiene 3 filas, 5 columnas y el número de celda a buscar es 11.

Veamos el ejemplo de la matriz de 3x5 elementos:

$$
\begin{bmatrix}
1 & 4 & 7 & 10 & 13 \\
2 & 5 & 8 & \textcolor{red}{11} & 14 \\
3 & 6 & 9 & 12 & 15 \\
\end{bmatrix}
$$

Nuestro objetivo es averiguar cual seria el valor de la celda 11 en la enumeración por filas. Si dibujamos la enumeracion por filas de la matriz anterior, obtendremos:

$$
\begin{bmatrix}
1 & 2 & 3 & 4 & 5 \\
6 & 7 & 8 & \textcolor{red}{9} & 10 \\
11 & 12 & 13 & 14 & 15 \\
\end{bmatrix}
$$

Podemos observar que es el número 9, tal como se muestra en el output.