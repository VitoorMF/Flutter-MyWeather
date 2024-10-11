import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
    required this.icon,
    required this.day,
    required this.temperature,
    required this.humidity,
    required this.isToday,
  });

  final IconData icon;
  final String day;
  final String temperature;
  final String humidity;
  final bool isToday;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: isToday ? const Color(0xFF48319D) : const Color(0x3248319D), //TODO CHANGE COLOR FUNCTION
          //48319D selected color
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  '$humidity%',
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            Text(
              day,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              '$temperature°',
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}