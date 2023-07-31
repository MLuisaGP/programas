import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/screens/counter/counter_function_screen.dart';
//import 'package:hello_word_app/presentation/screens/singIn/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiqueta en modo de desarrollo 
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red
      ),
      home: const CounterFunctionsScreen()
      //home: const singIn()
    );
  }
}
