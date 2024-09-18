import 'package:flutter/material.dart';
import 'package:paisa_tirne_haina/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paisa Tirne Haina',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 215, 202, 82)),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
