import 'package:flutter/material.dart';

class FooterMenu extends StatelessWidget {
  const FooterMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
//        currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
//        onTap: _onItemTapped,
    );
  }
}