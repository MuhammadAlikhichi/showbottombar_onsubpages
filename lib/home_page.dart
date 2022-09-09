import 'package:flutter/material.dart';
import 'package:showbottombar_onsubpages/page1.dart';
import 'package:showbottombar_onsubpages/page2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        ],
      ),
      body: Container(child: const Navigator_Widget()),
    );
  }
}

class Navigator_Widget extends StatelessWidget {
  const Navigator_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page = Page1();
        if (settings.name == 'page2') page = Page2();
        return MaterialPageRoute(builder: (_) => page);
      },
    );
  }
}
