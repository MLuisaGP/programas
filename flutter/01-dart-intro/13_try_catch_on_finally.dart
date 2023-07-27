Future<void> main() async {
  print("Inicio del programa");
  try {
    final value = await httpGet(
        "https://dart.dev/language/branches"); // esperate al resultado para continuar con el programa
    print(value);
  } on Exception catch (err) {
    print("Tenemos una exception: $err");
  } catch (err) {
    print("Algo terrible paso");
  } finally {
    print("Fin del try y catch");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
//   throw Exception('Faltan argumentos');
  throw "Error en la peticion";
//   return 'Tenemos un valor de la peticion';
}
