import 'package:flutter/material.dart';
import 'home.dart';
import 'product.dart';
import 'member.dart';
import 'help.dart';
import 'bio.dart';

void main() => runApp(App1305());

class App1305 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  var pages = <Widget>[
    HomePage(),
    ProductsPage(),
    MemberPage(),
    HelpPage(),
    BioPage(),
  ];

  int _navItemIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: pages[_navItemIndex],
        //IndexedStack(index: _navItemIndex, children: pages),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _navItemIndex,
            items: bottomNavItems(),
            onTap: (index) => setState(() {
                  _navItemIndex = index;
                })),
      );

  List<BottomNavigationBarItem> bottomNavItems() {
    var navItemIcons = [
      Icons.home,
      Icons.shopping_cart,
      Icons.person,
      Icons.help,
      Icons.details,
    ];

    var navItemLabels = [
      'Home',
      'Products',
      'Member',
      'Help',
      'Bio',
    ];

    var bgColors = [
      Colors.deepPurple,
      Colors.indigo,
      Colors.teal,
      Colors.brown,
      Colors.pink[200],
    ];

    return List.generate(
        navItemIcons.length,
        (index) => BottomNavigationBarItem(
            icon: Icon(navItemIcons[index]),
            label: navItemLabels[index],
            backgroundColor: bgColors[index]));
  }
}
