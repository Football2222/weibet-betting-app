import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav.dart';
import 'Stakescreen.dart';
class ods extends StatelessWidget {
  const ods({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 7, 0),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Nav()),
                );
              },
              icon: SvgPicture.asset(
                'assets/back.svg',
                height: 20,
                width: 20,
              ),
            ),
            title: Text(
              'Match Bet',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent, // appbar color.
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6, right: 15),
            child: SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //searchbar
                    //filter icon
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 160.0,
                width: 350.0,
                child: Carousel(
                  images: [
                    AssetImage(
                        'assets/slidimg1.png'),
                    AssetImage(
                        'assets/slidimg2.png'),
                    AssetImage(
                        "assets/slidimg3.png"),
                  ],
                  dotSize: 6,
                  dotSpacing: 15.0,
                  dotColor: Colors.white,
                  dotIncreasedColor: Colors.blue,
                  dotBgColor: Colors.transparent.withOpacity(0.2),
                  indicatorBgPadding: 5.0,
                  borderRadius: true,
                ),
              ),
              //Categories ROw at the bottom

              //Immunity Boosters

             ],
          ),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image(image: AssetImage("assets/fire.png"),),
              ),
              Text(
                'Odds',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WestIndies"),
                            Text("VS"),
                            Text("Newzeland"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.9",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 70,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "3.2",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => stake()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 253, 252, 252)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black, shape: BoxShape.circle),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: GoogleFonts.poppins(color: Colors.black),
                                        ),
                                      ),
                                      decoration:
                                      BoxDecoration(border: Border.all(color: Colors.black)),
                                      height: 60,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}