import 'package:flutter/material.dart';
import 'home.dart';
import 'profilepage.dart';
import 'settingpage.dart';
class Nav1 extends StatefulWidget {
  const Nav1({Key? key}) : super(key: key);

  @override
  State<Nav1> createState() => _Nav1State();
}

class _Nav1State extends State<Nav1> {
  int currentValue = 02;
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
