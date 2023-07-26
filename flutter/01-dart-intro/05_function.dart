void main() {
  print(greetEveryone());
  print(addTwoNumbers(8, 5));
  print(addTwoNumbersOptional(8));
  print(greetPerson(name: 'Fernando', message: 'Hi, '));
}

String greetEveryone() => 'Hello everyone!'; //funciones de flechas
int addTwoNumbers(int a, int b) => (a + b);
int addTwoNumbersOptional(int a, [int b = 0]) {
  //ponerlo entre corchetes hace que el valor sea un valor opcional

//   b=b ?? 0; //darle un valor por default si no existe un numero.
//   b=b+1;
//   b++;
//   b ??= 0;
  return a + b;
}

String greetPerson(
    {required String name, String message = 'Hola, ', int? num}) {
  return message + num.toString() + ' $name';
}
