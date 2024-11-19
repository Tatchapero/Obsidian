#plantUML

# Class diagram
> https://plantuml.com/class-diagram

## Defining visibility

| **Character** | **Icon for field**                                      | **Icon for method**                                      | **Visibility**    |
| ------------- | ------------------------------------------------------- | -------------------------------------------------------- | ----------------- |
| `-`           | ![](https://plantuml.com/img/private-field.png)         | ![](https://plantuml.com/img/private-method.png)         | `private`         |
| `#`           | ![](https://plantuml.com/img/protected-field.png)       | ![](https://plantuml.com/img/protected-method.png)       | `protected`       |
| `~`           | ![](https://plantuml.com/img/package-private-field.png) | ![](https://plantuml.com/img/package-private-method.png) | `package private` |
| `+`           | ![](https://plantuml.com/img/public-field.png)          | ![](https://plantuml.com/img/public-method.png)          | `public`          |
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

## Relations between classes

| **Type**    | **Symbol** | **Drawing**                                 | Relationship         | Example                                                                                 |
| ----------- | ---------- | ------------------------------------------- | -------------------- | --------------------------------------------------------------------------------------- |
| Extension   | `<\|--`    | ![](https://plantuml.com/img/extends01.png) | Is-a                 | `Banana` is-a `Fruit`                                                                   |
| Composition | `*--`      | ![](https://plantuml.com/img/sym03.png)     | Has-a                | `House` has-a `Room`. Rooms don't exists separate to a house                            |
| Aggregation | `o--`      | ![](https://plantuml.com/img/sym01.png)     | Exists independently | `Student` exists-in `Classroom`. Delete the `Classroom`, and the `Student` still exists |
```plantUML
@startuml
Class01 <|-- Class02 : Is-a
Class03 *-- Class04 : Has-a
Class05 o-- Class06 : Aggregation
Class07 .. Class08
Class09 -- Class10
@enduml
```

```plantuml
@startuml
Class01 <|-- Class02 : Is-a
Class03 *-- Class04 : Has-a
Class05 o-- Class06 : Aggregation
Class07 .. Class08
Class09 -- Class10
@enduml
```

---
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