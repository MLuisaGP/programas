void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilitis': <String>['impostor'],
    'sprites': {1: 'Ditto/front.png', 2: 'Ditto/back.png'}
  };
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Img: ${pokemon['sprites']}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
