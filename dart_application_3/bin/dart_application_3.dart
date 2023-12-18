// КЛАСС И ОБЪЕКТ
class Person {
  String name = ""; // имя
  int age = 0; // возраст
  void display() {
    print("Name: $name \tAge: $age");
  }
}

class Greet {
  String greet;
  Greet(this.greet);
  void display() {
    print(greet);
  }
}

void main() {
  Person tom = Person(); // создаем объект класса Person
  print(tom.age); // обращаемся к полю age
  tom.display(); // обращаемся к методу display

  // изменяем имя и возраст
  tom.name = "Tom";
  tom.age = 38;
  tom.display();

  // каскадная нотация
  Person tot = Person()
    ..name = "Tot"
    ..age = 38
    ..display(); // Name: Tot  Age: 38

  // конструкторы
  Greet hi = Greet("hi");
  hi.display();

  print("ИСКЛЮЧЕНИЯ");
  try {
    int x = 9;
    int y = 0;
    int z = x ~/ y;

    print(z);
  } catch (e, s) {
    print("Обработка исключения $e");
    print("Стек $s");
  }
  print("Завершение программы");
}
