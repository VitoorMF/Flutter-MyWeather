import 'package:flutter/material.dart';
import 'package:myweather/components/bottom_bar_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(35),
      ),
      child: const Row(
        children: [
          BottomBarButton(icon: Icons.add),
          BottomBarButton(icon: Icons.featured_play_list_outlined),
          BottomBarButton(icon: Icons.settings),
        ],
      ),
    );
  }
}
