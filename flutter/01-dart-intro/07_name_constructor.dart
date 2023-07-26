void main() {
  final Map<String, dynamic> rawJson = {
    'Name': 'Tony Stark',
    'Power': 'Money',
    'IsAlive': true
  };

  final ironman = Hero.fromJson(rawJson);
  print(ironman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['Name'] ?? 'No name found',
        power = json['Power'] ?? 'No power found',
        isAlive = json['IsAlive'] ?? false;

  @override
  String toString() {
    return """
    Name: $name,
    Power: $power,
    Is alive: ${isAlive ? 'YES!' : 'Nope'}
    """;
  }
}
