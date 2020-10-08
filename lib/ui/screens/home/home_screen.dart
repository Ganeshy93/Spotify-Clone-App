import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _courentTab = 0;
  final tabs = [
    Text('Home Page'),
    Text('Search Page'),
    Text('PlayList Page'),
    Text('Profile Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: tabs[_courentTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _courentTab,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music,
                  color: Colors.white,
                ),
                title: Text(
                  "Music Library",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Your Account",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color.fromARGB(255, 20, 20, 20),
              ),

            ],
            onTap: (index){
              setState(() {
                _courentTab = index;
              });
            },
          )),
    );
  }
}
