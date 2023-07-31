import 'package:flutter/material.dart';
import 'package:terminal_app/Presentation/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignIn();
  }
}
