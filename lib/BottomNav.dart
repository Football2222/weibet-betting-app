import 'package:flutter/material.dart';
import 'home.dart';
import 'profilepage.dart';
import 'settingpage.dart';
class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentValue = 0;
  List allScreens = [Homepage(), setting(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: allScreens[currentValue],
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),],
        onTap: (index){
          setState((){
            currentValue=index;
          });
        },
        currentIndex: (currentValue),
      )
    );
  }
}
