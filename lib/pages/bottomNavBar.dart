import 'package:fizzflow/pages/HomePage.dart';
import 'package:fizzflow/pages/accountPage.dart';
import 'package:fizzflow/pages/favouritePage.dart';
import 'package:fizzflow/pages/searchPage.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int selectedIndex = 0;

  List<Widget> selectedScreen = [
    HomePage(),
    favouritePage(),
    Accountpage(),
    Searchpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 245, 245),
      body: selectedScreen[selectedIndex],
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFF5722),
        foregroundColor: Colors.white,
        title: Text('FizzFlow'),
      ),
      drawer: Drawer(
        elevation: 1,
        backgroundColor: Color(0xFFFAFAFA),
        child: Center(
            child: Text(
          'I am in drawer',
          style: TextStyle(fontSize: 20),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 20,
        selectedIconTheme: IconThemeData(size: 27, color: Colors.deepOrange),
        selectedItemColor: Colors.deepOrange,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}
