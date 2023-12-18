main() {
// ГЛАВА 2 ОСНОВЫ DART

// ~/ - операция целочисленного деления двух чисел. Результат операции всегда представляет тип int:
  int a = 33;
  int b = 5;
  int c = a ~/ b; // 6
  int d = 22 ~/ 4; // 5
  print(c);
  print(d);

// Логические операции
/*
& (логическое умножение)
| (логическое сложение)
^ (логическое исключающее ИЛИ)
~ (логическое отрицание)
*/
  int a1 = 2; //010
  int b1 = 5; //101
  print(a1 & b1); //000 - результат 0

// if else else-if
  const int num1 = 8;
  if (num1 == 6) {
    print("num1 = 6");
  } else if (num1 == 7) {
    print("num1 = 6");
  } else if (num1 == 8) {
    print("num1 = 8");
  } else {
    print("Undefined");
  }

// switch
  int num = 2;
  switch (num) {
    case 1:
      print("число равно 1");
    case 2:
      print("число равно 2");
      num++;
      continue N3; // переход на метку N3
    N3:
    case 3:
      print("число равно 3");
    default:
      print("число не равно 1, 2, 3");
  }

// тернарный оператор
  const int a2 = 5;
  const int b2 = 8;
  a > b ? print(a2 - b2) : print(a2 + b2); // тернарный оператор

// Циклы
// for
  for (int i = 1; i < 9; i++) {
    print("$i * $i = ${i * i} \n");
  }
// do and while
  int n = 0;
  do {
    print(n);
    n++;
  } while (n < 5);

// ГЛАВА 3 Функциональное программирование
// функция sum которая создана за пределами main
  print(sum(2, 5)); // 7
  print(sum(4, 5)); // 9
  print(sum(11, 5)); // 16

// Функция как объект
  showMessage(hello);
  showMessage(bye);

// Анонимные функции
  Function sum1 = (int a3, int b3) {
    print("Sum of $a3 and $b3");
    return a3 + b3;
  };
  print(sum1(4, 5)); // 9
}

// функция созданная для 3 главы
int sum(int a, int b) {
  return a + b;
}

// Функция как объект
void showMessage(Function func) {
  func(); // вызываем переданную функцию
}

void hello() => print("Hello!");
void bye() => print("Goodbye!");
