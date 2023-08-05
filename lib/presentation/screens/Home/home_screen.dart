import 'package:flutter/material.dart';

import '../../../common/widget/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyCustomBottomNavigationBar(),
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.diamond),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('Home Screen'),
        ));
  }
}
