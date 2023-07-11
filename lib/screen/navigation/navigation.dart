

import 'package:flutter/material.dart';

import '../chat/chatlist.dart';
import '../homepage.dart';
import '../myads/myads.dart';
import '../sell/sell.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _selectedIndex=0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChatList(),
    MyAds(),
    ChatList(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell()));
          },child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   body:  Center(
     child: _widgetOptions[_selectedIndex],
   ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
           selectedItemColor: Colors.amber[800],
           onTap: _onItemTapped,
          items: [
          BottomNavigationBarItem(
               icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'MY ADS',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'ACCOUNT',
            ),
          ],
        ),
    );
  }
}
