import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart'; // برای آیکون‌ها

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          haptic: true,
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(
            color: const Color.fromARGB(255, 207, 207, 207),
            width: 1,
          ),
          tabBorder: Border.all(
            color: const Color.fromARGB(255, 0, 174, 255),
            width: 1,
          ),
          tabShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 203, 247, 255),
              blurRadius: 8,
            ),
          ],
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 500),
          gap: 8,
          color: const Color.fromARGB(255, 66, 66, 66),
          activeColor: Colors.purple,
          iconSize: 24,
          tabBackgroundColor: Colors.purple.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          tabs: const [
            GButton(icon: Icons.home, text: 'خانه'),
            GButton(icon: Icons.access_alarm_rounded, text: 'علاقه‌مندی'),
            GButton(
              icon: Icons.airline_seat_individual_suite_rounded,
              text: 'جست‌وجو',
            ),
            GButton(
              icon: Icons.supervised_user_circle_rounded,
              text: 'پروفایل',
            ),
          ],
        ),
      ),
    );
  }
}
