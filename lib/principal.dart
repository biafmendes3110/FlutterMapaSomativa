import 'package:flutter/material.dart';
import 'principal.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _HomePageState();
}

class _HomePageState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPAS"),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.map_rounded,
              size: 120.0,
              color: Colors.lightGreenAccent,
            ),
            Text(
              "App de Mapas",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("MAPA 1"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const mapa1()),
                        );
                      }),

                  ElevatedButton(
                      child: const Text("MAPA 2"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const mapa2()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("MAPA 3"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const mapa3()),
                        );
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}



