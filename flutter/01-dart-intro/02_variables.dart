void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true; //true, false, null; Los ? son null de salvacion
  final List<String> abilities = ['impostor'];
  final sprites = <String>['Ditto/front.png', 'Ditto/back.png'];

  //dynamic por defecto es null
  dynamic errorMenssage = 'Hola';
  errorMenssage = true;
  errorMenssage = [1, 2, 3, 4, 5];
  errorMenssage = () => true;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMenssage
  """); //string multilinea
}
