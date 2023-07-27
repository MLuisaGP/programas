void main() {
  emiNumbers().listen((value) {
    print("stream value: $value");
  });
}

Stream<int> emiNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
