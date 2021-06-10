import 'package:drinking_games/view/placeholder/PlaceHolderWidget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

  @override
  State createState() {
    return _HomeScreenState();
  }
  
  
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.green.shade100),
    PlaceholderWidget(Colors.blue.shade100)
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('That\'s a Drink'),),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              label: "Favorites"
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle),
              label: "Profile"
          )
        ],
      ),
    );  
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}