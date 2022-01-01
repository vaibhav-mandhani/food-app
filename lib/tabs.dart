import 'package:flutter/material.dart';
import './Favorites.dart';
import './main_drawer.dart';
import './Categories.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> mainpage = [
    {'pages': Categories(), 'title': 'Categories'},
    {'pages': Favorites(), 'title': 'Your Favorites'},
  ];
  int selectedIndex = 0;
  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainpage[selectedIndex]['title']),
      ),
      body: mainpage[selectedIndex]['pages'],
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
