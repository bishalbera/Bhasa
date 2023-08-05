import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../presentation/screens/Badges/badges_screen.dart';
import '../../presentation/screens/Home/home_screen.dart';
import '../../presentation/screens/Profile/profile_screen.dart';
import '../../utils/move_screen.dart';

class MyCustomBottomNavigationBar extends StatefulWidget {
  const MyCustomBottomNavigationBar({super.key});

  @override
  State<MyCustomBottomNavigationBar> createState() =>
      MyCustomBottomNavigationBarState();
}

class MyCustomBottomNavigationBarState
    extends State<MyCustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.badge,
                text: 'Badges',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;

                if (selectedIndex == 0) {
                  moveScreen(context, const HomeScreen());
                } else if (selectedIndex == 1) {
                  moveScreen(context, const BadgesScreen());
                } else {
                  moveScreen(context, const ProfileScreen());
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
