import 'package:flutter/material.dart';

import '../components/my_day_item.dart';

class WeatherDays extends StatelessWidget {
  const WeatherDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 90.0,
        children: const <CustomListItem>[
          CustomListItem(
            day: 'Hoje',
            humidity: '23',
            icon: Icons.cloud,
            temperature: '23',
            isToday: true,
          ),
          CustomListItem(
            day: 'Terça',
            humidity: '23',
            icon: Icons.cloud,
            temperature: '23',
            isToday: false,
          ),
          CustomListItem(
            day: 'Quarta',
            humidity: '23',
            icon: Icons.cloud,
            temperature: '23',
            isToday: false,
          ),
          CustomListItem(
            day: 'Quinta',
            humidity: '23',
            icon: Icons.cloud,
            temperature: '23',
            isToday: false,
          ),
        ],
      ),
    );
  }
}
