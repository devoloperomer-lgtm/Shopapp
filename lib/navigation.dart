import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigations extends StatelessWidget {
  int currentindex;
  void Function(int)? onchanged;

  Navigations({super.key, required this.currentindex, required this.onchanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GNav(
          selectedIndex: currentindex,
          onTabChange: onchanged,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          color: Colors.grey,
          activeColor: Colors.blue,
          tabBackgroundColor: const Color.fromARGB(255, 233, 230, 230),
          tabBorderRadius: 25,
          tabs: const [
            GButton(icon: Icons.home, text: "home"),
            GButton(icon: Icons.shopping_bag, text: "Store"),
          ],

          gap: 6,
        ),
      ),
    );
  }
}
