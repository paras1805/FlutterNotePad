import 'dart:ffi';

import 'package:flutter/material.dart';

import 'notepad/notescreens/notepad_login.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  // ctrl+alt+L
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 3,
          titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
          backgroundColor: Colors.white
        )
      ),
      home: const NotePadLoginScreen(),
    );
  }
}
