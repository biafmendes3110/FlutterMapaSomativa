import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class mapa3 extends StatefulWidget {
  const mapa3({Key? key}) : super(key: key);

  @override
  _mapa3State createState() => _mapa3State();
}

class _mapa3State extends State<mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA - ITÁLIA'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(41.87194, 12.56738), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=34760bc027494f3aaae6fd071b7ac862',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.87194, 12.56738),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.red),
                        ),
                  ),

                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
