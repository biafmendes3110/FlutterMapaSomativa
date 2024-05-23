import 'package:flutter/material.dart';
import 'principal.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rotas nomeadas',
        initialRoute: '/',
        routes: {
          '/': (context) => Principal(),
          '/segunda': (context) => const mapa1(),
          '/terceira': (context) => const mapa2(),
          '/quarta': (context) => const mapa3(),
        }
    );
  }
}
