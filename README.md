# cloneSpotify
Clone Spotify using PodCast API


# App Spotify Clone

App creada como reto para aplicación por reclutador externo, desarrollada en lenguaje Swift y SwiftUI.

Arquitectura: MVVM

Frameworks: Ninguno

### To-Do

- Verificar conexión con la API de audioboom, responde muchos JSON anidados, lo cuál da un nivel de complejidad mayor para acceder a estos, se realizó mediante diferentes clases.
- Crear la vista de detalles de cada PodCast, esto verificando con información de la API.
- Se puede usar UserDefaults para guardar el último podcast escuchado por el usuario y agregarlo a la lista “Para ti” o “Escuchados recientemente”
- Usar el reproductor para escuchar, pausar, adelantar, retroceder o continuar a traves de la lista de podcast PlayList  creada y comentada en el ViewModel


////////////
\

# Swift

Swift and SwiftUI Courses Notes

Created by @davidlondonog

### Accesos rápidos

[Manipulación de Strings](https://www.notion.so/Manipulaci-n-de-Strings-8025341fd1fa4fac989220eff127997d)

[Sentencias y estructuras Avanzadas](https://www.notion.so/Sentencias-y-estructuras-avanzadas-en-Swift-d43ad69f86e545868b6a7f3ce368b15c)

[Funciones en Swift](https://www.notion.so/Funciones-e8b1ab221e0c429490019f37f4563957)

---

## Swift 5

Lenguaje de programación poderoso e intuitivo creado por  Apple. Está diseñado para brindar a los desarrolladores más libertad.

No usa punto y coma ( ; )

No existen constantes, solo variables no mutables.

# Colecciones

### Variables

No mutable = let

Mutable = var

![Untitled](Swift%20129ff59ca2a9415da5f5fec586e9220b/Untitled.png)

### Sets o conjuntos

Declaración de Sets. → [Detalles en web](https://developer.apple.com/documentation/swift/set#overview)

```swift
let nameSet : Set = [content]
var nameSet : Set = [content]
```

### Array o Tuplas

Declaración de Arrays → [Detalles en web](https://developer.apple.com/documentation/swift/array#overview)

```swift
let nameArray = [ content ]
var nameArray = [ content ]
```

### Dictionaries

Declaración de un diccionario → [Detalles en web](https://developer.apple.com/documentation/swift/dictionary#overview)

```swift
var dictionaryName = [200: "OK",
403: "Access forbidden",
404: "File not found"]
```

### Manipulación de Strings

El manejo de Strings es muy importante en desarrollo para entender el control y flujo de cada uno de estos símbolos dentro del sistema.

[Ver detalles aquí.](https://www.notion.so/Manipulaci-n-de-Strings-8025341fd1fa4fac989220eff127997d)

## Rangos

El operador de rango define un rango de valores. Es el pilar principal para trabajar con bucles ([Aquí para ver detalles de bucles](https://www.notion.so/Sentencias-y-estructuras-avanzadas-en-Swift-d43ad69f86e545868b6a7f3ce368b15c))

Para definir un rango usamos el operador ....

Los rangos pueden ser:

- Rango cerrado que va de a ... b

```swift
for idx in 1...5 {
	print(idx)
}
```

- Rango semi abierto pasando de a .. <b (Aquí solo van dos puntos, el tercero es reemplazado por el signo)

```swift
for idx in 1..<5 {
	print(idx)
}
```

- Rango unilateral pasando de un ... (Solo necesita que se le defina un lado del Rango)

```swift
let names = ["David", "Pedro", "Pepito"]
for i in 0..<names.count {
	print("La persona \(i+1) se llama \(names[i])")
}
```

## Switch / Case

El switch case nos puede ayudar a ejecutar un código de acuerdo al caso que se examine, es decir, es cómo crear una variable y tomar una decisión dependiendo el valor que tome. Es obligatorio tener una opción por defecto para que se ejecute cuando no reconozca las opciones del case.

En un switch las comas que separan cada pattern en un case, pueden leerse como un ó, ||. Esto ayuda a entender sintácticamente cada case.

```swift
switch value {
	case pattern :
		code
	default:
		code
}
```

### Where dentro de un Switch

Haciendo una sintaxis un poco más compleja se puede crear un let en el pattern del case y validar información de esta. Este let o var toma el valor que está dado en el value

```swift
switch value {
	case pattern1 where pattern2:
		code
	case let value:
		code
	default:
		code
}
```

## Struct y Class

### En común

- Sirven para crear nuevos métodos
- Pueden tener propiedades de cualquier tipo
- Pueden tener métodos

### Struct

Struct es un Value Type

(Value Type es similar a trabajar en un Documento de Word y crear copias para editar)

```swift
struct SomeClass {
	var name: String
	
}
```

![Untitled](Swift%20129ff59ca2a9415da5f5fec586e9220b/Untitled%201.png)

### Class

Class is a Reference Type.

(Reference Type es similar a trabajar en la nube editando un sólo Google Doc)

```swift
class SomeClass {
	var name: String
	
	init() {
		
	}
}
```

![Untitled](Swift%20129ff59ca2a9415da5f5fec586e9220b/Untitled%202.png)

## Operaciones ternarias

Sirve para modificar o asignar un valor pasando por un condicional en línea (inline conditional)

`condition ? true : false`

Se define un valor condicional con signo de pregunta, primer valor si es true y segundo valor si es false

```swift
themeColor ? light : dark
```

### Operadores Lógicos

Los operadores lógicos le dan sentido y ayudan a la sintaxis para ser entendible por cada programador.

| Operador | Declaración | Definición |
| --- | --- | --- |
| NOT | !nameValue | Inserta un ! adelante del valor Booleano y se niega automáticamente |
| AND | && | Se inserta en medio de dos valores Booleanos |
| OR | || | Se inserta en medio de dos valores Booleanos |

---

# Nil y Unwrapped

## Optionals y Nil

Al tener una variable que no va a contener un valor, siempre, puede definirse como 

```swift
var Name : String?
```

El ? indica que es opcional, puede o no contener un valor. Cuando está vacío adopta el valor de Nil.

> Nil ≠ Null
> 

En swift **no** existe el valor nulo, el Nil es la ausencia de valor.

### Force unwrapping

Al obtener un valor Nil, Swift nos entrega `Optional(value)` para extraer el valor del contenedor opcional, se puede usar la fuerza bruta con el force unwrapping aplicando un ! al final de la llamada del valor.

```swift
let name = nameVarNil!
```

Esto podría presentar problemas en caso de que el valor sea Nil. Por eso se recomienda usar un if para validar si es valor es Nil y así forzar de manera segura.

### Optional Binding u Optional Unwrapping

Es una estructura para asegurar que una variable opcional tiene un valor para poder implementar el Force unwrapping de manera segura.

El Optional Binding permite crear y dar valor a una variable al declarar un condicional, variable que **sólo** va existir dentro de la estructura del Optional Binding.

Estructura:  `If let/var name = Value {code}` Por ejemplo:

```swift
var edad : Int?
edad = 25

if let mostrarEdad = edad {
	print(mostrarEdad)
}
```

También se pueden crear varias condiciones separando por coma cada Optional Binding o condiciones Booleanas. Por ejemplo:

```swift
if let firstNumber = Int("4"),
		let secondNumber = Int("42"),
			firstNumber < secondNumber && secondNumber < 100 {
			print("\(firstNumber) < \(secondNumber) < 100")
}
```

### Optional chaining

El optional chaining nos permite llamar propiedades, métodos y subíndices en un opcional que podría ser Nil. Si algunos de los valores chain retorna Nil, el valor será Nil. Esto no guarda el valor de la izquierda dentro de la variable.

El siguiente código da un ejemplo de Optional chaining utilizando un objeto de coche ficticio.

En este ejemplo, si las variables opcionales car o tire son Nil, la variable tireSize será Nil; de lo contrario, la variable tireSize será igual a la propiedad tireSize:

```swift
var tireSize = car?.tires?.tireSize
```

### Diferencias entre Optional Chaining y Optional Binding

| Optional Chaining | Optional Binding |
| --- | --- |
| 1. El optional chaining no guarda el valor a la izquierda dentro de la variable. | 1. El Optional Binding guarda el valor que está enlazado en la variable. |
| 2. El Optional Chaining no permite que un bloque completo de lógica se ejecute al mismo tiempo. | 2. El Optional Binding permite que un bloque completo de lógica se ejecute al mismo tiempo. |
| 3. Con Optional Chaining, se está creando una nueva referencia, ya está wrapped. | 3. Con optional Binding, se está creando una nueva referencia, simplemente hace el unwrapped. |

### Unwrap Implícito

Crear una variable con el name! quiere decir que nunca puede ser nil, se presenta como un valor implícito y realizar el unwrapped desde que se declara la variable

Requiere cuidado

También tiene del ! para crear una variable

Declarar variable? ≠ Declarar variable!

```swift
let assumedString: String! = "String unwrapped desde que se declara"
let implicitString : String = assumedString
```

Es muy fácil marcar una variable como optional? qué puede o no tener el valor de Nil, hacer un force unwrapping si hay o no un valor, hacer un casting implícito.

Sin embargo, si algo sale mal; una variable es nil o no tiene ningún valor no vamos a saber la causa de la ausencia de valor. Algunas veces necesitamos saber la causa de estos errores, por ejemplo, el usuario no ingresó información, no hay conexión a internet, entre otros.

Para poder ver las generaciones de errores, podemos lanzar una función y luego capturar la respuesta para analizar errores. Estos errores normalmente son causados por código, son errores programados para alertar al desarrollador de que algo está pasando junto con la razón aparente.

### Nil Coalescing

Es un operador que sirve para manejar valores opcionales que pueden tener valor Nil. La idea es poder asignar un valor por defecto, por ejemplo: El usuario se registra en la app y no ingresa su código postal, así que queremos asignar un código postal por defecto.

```swift
let defaultZip = 050001
var zipCode : Int?

var zipFinal = zipCode ?? defaultZip
```

El doble ?? nos indica la asignación del valor por defecto en caso de que el primer valor sea Nil. Esto con el fin de evitar errores y mantener siempre un valor dentro del hilo del código.

---

# Manejo de errores

Cuando estoy llamando una función que podría generar algún tipo de error, puedo hacerlo mediante un try catch para poder capturar el error que se genera.

```swift
func makeASandwich() throws {

}

do {
		try makeASandwich()
		//ejecuta esta línea si todo sale bien
} catch {
		//ejecuta acá si hay algún error
		//Puedo crear una funcion para manejar cada error
}
```

<aside>
💡 Try = Intentar/Probar
Catch = Capturar

</aside>

---

# Aserciones y Precondiciones

Las dos son líneas de código que se comprueban en tiempo de ejecución para estar seguros que se cumple un requisito definido, o porque un valor toma el valor que debe tomar.

- No agregan ninguna funcionalidad al código, pero si lo hacen más robusto y seguro.
- Bien usados, evitan tener que hacer uso del try catch para manejar los errores manualmente.
- Evalúan una condición, en caso de cumplirse sigue adelante con el código.

Las aserciones son sólo para entorno de desarrollo, **modo debug**. Son mucho más restrictivas para encontrar más fácil errores que se puedan escapar.

Y las precondiciones son válidas incluso en **producción**. Tratan de añadir seguridad, validan rangos, datos, entre todo lo que necesitemos.

> La función `assert()` te permite verificar el estado de tu programa en **tiempo de ejecución** y fallar si las cosas no son como deberían ser. Una de las características interesantes de `assert()` es que se elimina automáticamente cuando construyes tu aplicación en modo de lanzamiento, pero si no quieres que eso suceda, si quieres que tu aplicación se bloquee si algo está muy mal, entonces deberías usar la función `precondition()` en su lugar.
> 

```swift
let age = -5
//assert(condition, "Message if have error")
assert(age >= 0, "La edad no puede ser menor a cero")
```

```swift
//precondition(condition, "Message if have error")
precondition(age>=0, "La edad de una persona no puede ser negativa")
```

### Available en API - Manejo de versiones

Para poder validar el versionado del sistema operativo y tomar decisiones de funciones deprecadas o de nuevas funcionalidades poder hacer uso del `#available`

```swift
if #available(iOS 12, macOS 10.12, *){
	//Ejecutar las acciones de iOS 12, macOS10.12+
} else {
	//Mantener el código de versiones anteriores de iOS, macOS...
}
```

# Funciones avanzadas de Swift

Aquí podemos ver Manipulación de Strings, estructuras de datos, sentencias de control y sentencias de transferencias de control.

[Manipulación de Strings](https://www.notion.so/Manipulaci-n-de-Strings-8025341fd1fa4fac989220eff127997d)

[Sentencias y estructuras avanzadas en Swift](https://www.notion.so/Sentencias-y-estructuras-avanzadas-en-Swift-d43ad69f86e545868b6a7f3ce368b15c)

Más enlaces de interés:

[Funciones](https://www.notion.so/Funciones-e8b1ab221e0c429490019f37f4563957) 

<aside>
💡 **Dato curioso
¿Que significa el prefijo NS que vemos en frameworks de Swift?**

El código original para los frameworks de Cocoa vienen de las librerías Foundation NeXTSTEP y de AppKit (Esos nombres todavía se usan en Cocoa de Apple), y los ingenieros de NextStep optaron por prefijar todo con NS.
Esto debido a que Objective-C (El padre de Swift y por lo tanto de SwiftUI) es una extensión de C, que no tiene espacios de nombres como en C++, los símbolos deben tener un prefijo único para que no colisionen.
NS = NextStep

</aside>

---

![https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/b4/a4/07/b4a4073a-2d45-51d1-9b36-3a6c7dffa171/Xcode-85-220-0-4-2x.png/1200x630bb.png](https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/b4/a4/07/b4a4073a-2d45-51d1-9b36-3a6c7dffa171/Xcode-85-220-0-4-2x.png/1200x630bb.png)

# IDE Xcode

## Comentarios en Xcode

Los comentario sirven para crear etiquetas, identificar trozos de código o dejar un “mensaje” dentro del código, en algunas culturas de desarrollo y/o empresas es visto como una mala práctica, pues denota un código incomprensible y sucio.

### Comentar un bloque de código

```swift
/*
Comentario de código en Swift
*/
```

### Comentar una sola línea o inline comment

```swift
//Este es un comentario en una línea en Swift
```

### Crear marcas y etiquetas

Una marca o una etiqueta sirven para dar información extra que aparecerán en la barra de acceso rápido de Xcode.

![Untitled](Swift%20129ff59ca2a9415da5f5fec586e9220b/Untitled%203.png)

### Mark

```swift
//MARK: Este es el ejemplo de un mark, aparecerá en la barra superior.
```

`//MARK:` y `//MARK -`  funcionan idénticamente al `#pragma mark` y al `#pragma mark -` de Objective-C. Básicamente son lo mismo.

### To-Do

```swift
//TODO: Mensaje de tarea pendiente tipo inline comment, aparecerá en la barra.
```

### To Fix - Fix me

```swift
//FIXME: Crear una marca de algo pendiente por corregir, aparecerá en la barra.
```

## Shortcuts de Xcode

Atajos de teclado útiles para aumentar la productividad en el IDE

| ATAJO | FUNCION |
| --- | --- |
| Command + S | Save - Guardar proyecto |
| Command + B | Build - Construir el proyecto sin compilar |
| Command + R | Run - Correr/Compilar el proyecto |
| Command + Shift + K | Clean - Limpiar proyecto |
| Shit + Command + O | Open quickly - Abrir buscador de archivos de Xcode |
| Control + Shift | Seleccionar diferentes líneas al tiempo para editar |
| Control +  Command + E | Refactor - Refactorizar o renombrar el objetivo seleccionado |

[Funciones](https://www.notion.so/Funciones-e8b1ab221e0c429490019f37f4563957)
