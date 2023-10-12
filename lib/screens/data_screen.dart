import 'package:flutter/material.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/card_screen.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/home_screen.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/search_screen.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int currentPageIndex = 0;

  List<Widget> Screens = [
    HomeScreen(),
    SerachScreen(),
    CardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.card_giftcard),
            icon: Icon(Icons.card_giftcard_outlined),
            label: 'Cards',
          ),
        ],
      ),
      body: Screens[currentPageIndex],
    );
  }
}
