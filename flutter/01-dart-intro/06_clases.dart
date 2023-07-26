void main() {
  final Hero wolverine = Hero(name: 'Wolverine');
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine.toString());
}

class Hero {
  String name;
  String power;
//   Hero(this.name, this.power);
//   Hero(String name, String power):
//   this.name = name,
//   this.power = power;

  Hero({required this.name, this.power = "Sin poder"});

  @override
  String toString() {
    return ' El nombre del heroe es $name y su poder es $power';
  }
}
