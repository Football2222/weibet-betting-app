import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_page.dart';


class splash extends StatelessWidget {
  const splash ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
          OnBoardingPage()));
    }
    );
    return Scaffold(

        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  padding: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(image: AssetImage("assets/learn.png"), ),
                ),
              ],
            ),
          ),
        )
    );
  }
}