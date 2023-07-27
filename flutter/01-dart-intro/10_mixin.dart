void main() {
//   final dolphin = Dolphin(isAlive:true, gender:Gender.hembra);
//   dolphin.swim();
//   dolphin.move();

  final duck = Duck(isAlive: true, gender: Gender.macho);
  duck.move(2);
}

mixin class Walker {
  String walk() => "I´m Walking";
}

mixin class Swimer {
  String swim() => "I'm swiming";
}

mixin class Flyer {
  String flying() => "I'm flying";
}

enum Gender { hembra, macho }

abstract class Animal {
  bool isAlive;
  final String specie;
  final Gender gender;
  Animal({required this.isAlive, required this.gender, required this.specie});
  void move(int movimiento);
}

abstract class Mammal extends Animal {
  Mammal(
      {required super.isAlive, required super.gender, required super.specie});
}

abstract class Bird extends Animal {
  Bird({required super.isAlive, required super.gender, required super.specie});
}

abstract class Fish extends Animal {
  Fish({required super.isAlive, required super.gender, required super.specie});
}

class Dolphin extends Mammal with Swimer {
  Dolphin(
      {required super.isAlive,
      required super.gender,
      super.specie = "Dolphin"});

  @override
  void move(int movimiento) {
    // 0 nadar 1 caminar 2 volar
    String text = "I'm  a $specie ";
    switch (movimiento) {
      case 0:
        print(text + swim());

      case 2:
        print(text + swim());
    }
  }
}

class Duck extends Bird with Walker, Flyer, Swimer {
  Duck({required super.isAlive, required super.gender, super.specie = "Duck"});
  @override
  void move(int movimiento) {
    // 0 nadar 1 caminar 2 volar
    String text = "I'm  a $specie ";
    switch (movimiento) {
      case 0:
        print(text + swim());
      case 1:
        print(text + walk());
      case 2:
        print(text + swim());
    }
  }
}
