import 'package:flutter/material.dart';
import 'package:flutter_daily_exercise_app/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: size.height * .10,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        BottomNavItem(
          svgSrc: "assets/icons/calendar.svg",
          title: "Today",
          press: () => {},
        ),
        BottomNavItem(
          svgSrc: "assets/icons/gym.svg",
          title: "All Exerciese",
          isActive: true,
          press: () => {},
        ),
        BottomNavItem(
          svgSrc: "assets/icons/Settings.svg",
          title: "Settings",
          press: () => {},
        ),
      ]),
    );
  }
}
