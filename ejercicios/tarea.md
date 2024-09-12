# Ejercicio 1

Un número primo es un número que solo es divisible por 1 y por sí mismo. Dado un número entero $n$, imprime si el número es primo o no.

## Input

```
5
```

## Output

```
Primo
```

## Input

```
14
```

## Output

```
No primo
```



# Ejercicio 2
Implemente una aplicación que permita calcular el pago que debe realizar una familia por el consumo de agua potable. Se sabe que existe un pago fijo de $10.00 y que los primeros 50 litros de agua no tienen costo. Entre 51 y 200 litros se cobra $0.5 por litro, y más de 200 litros a $1.5 por litro.
## Input
```
30
```
## Output
```
$10.00
```
Pago fijo.
## Input
```
120
```
## Output
```
$45.00  
```
Consumo entre 51 y 200
$(10 + 0.5 \times (120 - 50))$
## Input
```
250
```
## Output
```
$185.00
```
$10 + 0.5 \times (250 - 50) + 1.5 \times (250 - 200)$

- $10$ Pago fijo
- $0.5 \times (250 - 50)$ Consumo entre 51 y 200. A este tramo se le aplica un costo de $0.5$ por cada litro consumido. Si se consumen más de 200 litros, significa que este tramo (del litro 51 al litro 200) está completamente cubierto. Por lo tanto, calculamos el costo de este tramo completo. $(250 - 50)$ es el rango de litros en el que se cobra $0.5 por litro (es decir, hay 150 litros entre el litro 51 y el litro 200).

- $1.5*(250 - 200)$ Cualquier consumo adicional por encima de 200 litros se cobra a $1.5 por litro. $(250 - 200)$ son los litros consumidos por encima de 200.

# Ejercicio 3
Escriba un programa que reciba un número `n` e imprima los números impares menores a `n`.

## Input
```bash
6
```
## Output
```bash
1
3
5
```

# Ejercicio 4
La operación factorial se define de la siguiente manera: $5!=5\times4\times3\times2\times1$. Cree un programa que reciba un valor `n`, donde `n` es el valor del factorial a calcular.

### Input
```
5
```
Donde 5 es el valor a calcular: $5!=5\times4\times3\times2\times1=120$

### Output
```
120
```

# Ejercicio 5
Escriba un programa en el que el usuario debe adivinar un número aleatorio entre 1 y 100. El programa proporcionará pistas si el número es demasiado alto o demasiado bajo. El juego continuará hasta que el jugador adivine correctamente el número. Al final, imprima el número y la cantidad de intentos realizados.

### Ejemplo del juego
Número a adivinar: 30.
```
20
"Número demasiado bajo, intenta nuevamente"
39
"Número demasiado alto, intenta nuevamente.
30
"¡Felicidades! ¡Haz adivinado el número! El número es 30 y lo adivinaste en 3 intentos.
```

# Ejercicio 5 (Opcional)

En la Universidad Nacional de Ingeniería, la red local entre los servidores no siempre funciona correctamente. Se descubrió que cuando se envían dos mensajes idénticos, estos se combinan, haciendo que ambos mensajes se conviertan en uno. En esta combinación, el final del primer mensaje coincide con el inicio del segundo, y esta superposición solo puede ocurrir si los caracteres son iguales.

Por ejemplo, si enviamos el mensaje `abrakadabra` de manera consecutiva, es posible que el resultado sea `abrakadabrabrakadabra` o `abrakadabrakadabra`.

Mientras se consulta a la empresa de soporte, debes proporcionar una solución temporal. Para ello, debes encontrar cuál podría ser el mensaje original. Dado el mensaje final, determina si este es el resultado de la mezcla de dos mensajes y, de ser así, identifica un posible mensaje original.

Aquellas situaciones donde los dos mensajes se sobreponen completamente uno sobre el otro, no son considerados mensajes erroneos. De manera similar si los dos mensajes se concatenan sin que exista una mezcla, tampoco son considerados mensajes erroneos (por ejemplo `abcabc`).

## Input
```
abrakadabrabrakadabra
```

##Output
```
YES
abrakadabra
```

## Input
```
ababababa
```

## Output
```
YES
ababa
```

## Input
```
abcabc
```

## Output
```
NO
```

## Input
```
tatbt
```

## Output
```
NO
```

# Entrega

- Debes de generar un proyecto en IntelliJ IDEA.

- Cada ejercicio debe de tener su propio archivo con el nombre `Ejercicio1.java`, `Ejercicio2.java`, `Ejercicio3.java`, etc.

- Debes de comprimir el proyecto en un archivo `zip` con el siguiente formato de nombre `nombre_apellido_tarea1.zip` y subirlo a la plataforma de Google Classroom.