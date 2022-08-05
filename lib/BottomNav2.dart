import 'package:flutter/material.dart';
import 'home.dart';
import 'profilepage.dart';
import 'settingpage.dart';
class Nav2 extends StatefulWidget {
  const Nav2({Key? key}) : super(key: key);

  @override
  State<Nav2> createState() => _Nav2State();
}

class _Nav2State extends State<Nav2> {
  int currentValue = 1;
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
