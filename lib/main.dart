import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_page.dart';
import 'package:movie_app/screens/my_list.dart';
import 'package:movie_app/screens/profile.dart';
import 'package:movie_app/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    Search(),
    MyListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 10.0,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        iconSize: 25.0,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,


        items: [
          BottomNavigationBarItem(icon: Icon(
              selectedIndex == 0? Icons.home : Icons.home_outlined,
            ), 
            label: "Home"),
          
          BottomNavigationBarItem(
            icon: Icon(selectedIndex == 1
                  ? Icons.category
                  : Icons.category_outlined,
            ),
            label: "Search"
          ),
          
          BottomNavigationBarItem(icon:Icon(selectedIndex == 2 ? Icons.favorite : Icons.favorite_border), label: "MyList"
          ),
          BottomNavigationBarItem(icon: Icon(
              selectedIndex == 3
                  ? Icons.person
                  : Icons.person_outline,
            ), label: "Profile"
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
