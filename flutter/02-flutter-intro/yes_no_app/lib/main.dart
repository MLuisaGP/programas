import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screen/chat/chat_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()) //se coloca _ pára decir que el context no lo usare.
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 3).theme(),
        title: 'Material App',
        home:const ChatScreen()
      ),
    );
  }
}