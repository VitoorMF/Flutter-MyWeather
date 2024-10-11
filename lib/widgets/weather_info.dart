import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'Rio de Janeiro',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '19°',
            style: TextStyle(fontSize: 118),
          ),
          Text(
            'Tempo limpo',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
