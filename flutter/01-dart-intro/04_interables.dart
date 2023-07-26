void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original $numbers');
  print('List lenght ${numbers.length}');
  print('First: ${numbers.first}');
  print('Last ${numbers.last}');

  print('Reversed ${numbers.reversed}');
  final reversedNumbers = numbers.reversed;
  print('Interable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; //true
  });
  print('>5: $numbersGreaterThan5');
  print('>5: ${numbersGreaterThan5.toSet()}');
}
