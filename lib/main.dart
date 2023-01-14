import 'package:flutter/material.dart';
import 'package:shelterapp/Screens/page_detail.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  void ontapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: selectedIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            label: "Home"),
            BottomNavigationBarItem(icon: selectedIndex == 1 ? Icon(Icons.shopping_bag) : Icon(Icons.shopping_bag_outlined),
            label: "adopt"),
            BottomNavigationBarItem(icon: selectedIndex == 2 ? Icon(Icons.person) : Icon(Icons.person_outline),
            label: "profile"),
          ],

          currentIndex: selectedIndex,
          onTap: ontapped,
        ),
      ),
    );
  }
}
