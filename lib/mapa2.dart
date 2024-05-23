import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class mapa2 extends StatefulWidget {
  const mapa2({Key? key}) : super(key: key);

  @override
  _mapa2State createState() => _mapa2State();
}

class _mapa2State extends State<mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA - DUBAI'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(25.2646, 55.3077), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/atlas/{z}/{x}/{y}.png?apikey=34760bc027494f3aaae6fd071b7ac862',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(25.2646, 55.3077),
                    builder: (ctx) => Container(
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
