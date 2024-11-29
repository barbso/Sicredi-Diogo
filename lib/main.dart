import 'package:flutter/material.dart';
import 'tela_login.dart';

void main() {
  runApp(MaterialApp(
    home: MeuApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue)
    ),
  ));
}


class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TelaLogin();
  }
}



