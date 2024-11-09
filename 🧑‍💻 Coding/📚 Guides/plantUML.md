#plantUML

# Class diagram
> https://plantuml.com/class-diagram
## Declaring element

```plantUML
@startuml
abstract        abstract
abstract class  "abstract class"
annotation      annotation
circle          circle
()              circle_short_form
class           class
class           class_stereo  <<stereotype>>
diamond         diamond
<>              diamond_short_form
entity          entity
enum            enum
exception       exception
interface       interface
metaclass       metaclass
protocol        protocol
stereotype      stereotype
struct          struct
@enduml
```

```plantuml
@startuml
abstract        abstract
abstract class  "abstract class"
annotation      annotation
circle          circle
()              circle_short_form
class           class
class           class_stereo  <<stereotype>>
diamond         diamond
<>              diamond_short_form
entity          entity
enum            enum
exception       exception
interface       interface
metaclass       metaclass
protocol        protocol
stereotype      stereotype
struct          struct
@enduml
```
## Relations between classes

| **Type**    | **Symbol** | **Drawing**                                 |
| ----------- | ---------- | ------------------------------------------- |
| Extension   | `<\|--`    | ![](https://plantuml.com/img/extends01.png) |
| Composition | `*--`      | ![](https://plantuml.com/img/sym03.png)     |
| Aggregation | `o--`      | ![](https://plantuml.com/img/sym01.png)     |
```plantUML
@startuml
Class01 <|-- Class02 'Is-a relationship'
Class03 *-- Class04 'Has-a relationship'
Class05 o-- Class06
Class07 .. Class08
Class09 -- Class10
@enduml
```

```plantuml
@startuml
Class01 <|-- Class02
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 -- Class10
@enduml
```

---

```plantUML
@startuml
Class11 <|.. Class12
Class13 --> Class14
Class15 ..> Class16
Class17 ..|> Class18
Class19 <--* Class20
@enduml
```

```plantuml
@startuml
Class11 <|.. Class12
Class13 --> Class14
Class15 ..> Class16
Class17 ..|> Class18
Class19 <--* Class20
@enduml
```

---

```plantUML
@startuml
Class21 #-- Class22
Class23 x-- Class24
Class25 }-- Class26
Class27 +-- Class28
Class29 ^-- Class30
@enduml
```

```plantuml
@startuml
Class21 #-- Class22
Class23 x-- Class24
Class25 }-- Class26
Class27 +-- Class28
Class29 ^-- Class30
@enduml
```


## Defining visibility

| **Character** | **Icon for field**                                      | **Icon for method**                                      | **Visibility**    |
| ------------- | ------------------------------------------------------- | -------------------------------------------------------- | ----------------- |
| `-`           | ![](https://plantuml.com/img/private-field.png)         | ![](https://plantuml.com/img/private-method.png)         | `private`         |
| `#`           | ![](https://plantuml.com/img/protected-field.png)       | ![](https://plantuml.com/img/protected-method.png)       | `protected`       |
| `~`           | ![](https://plantuml.com/img/package-private-field.png) | ![](https://plantuml.com/img/package-private-method.png) | `package private` |
| `+`           | ![](https://plantuml.com/img/public-field.png)          | ![](https://plantuml.com/img/public-method.png)          | `public`          |
```plantuml
@startuml
class Dummy {
 -field1
 #field2
 ~method1()
 +method2() 
}
@enduml
```

```plantUML
@startuml
class Dummy {
 -field1
 #field2
 ~method1()
 +method2() 
}
@enduml
```

## Abstract and Static

```plantuml
@startuml
class Dummy {
  {static} String id
  {abstract} void methods()
}
@enduml
```

```plantUML
@startuml
class Dummy {
  {static} String id
  {abstract} void methods()
}
@enduml
```

## Extends and Implements

```plantuml
@startuml
class ArrayList implements List
class ArrayList extends AbstractList
@enduml
```

```plantUML
@startuml
class ArrayList implements List 'Implements'
class ArrayList extends AbstractList 'Extends'
@enduml
```