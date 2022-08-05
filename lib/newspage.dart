import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomNav.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Nav()),
            );
          },
          icon: SvgPicture.asset(
            'assets/back.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Text(
          'News',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent, // appbar color.
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage("assets/fire.png"),),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text(
                    'News',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17191C),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news1img.png"),
                    height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(right: 5),
                            child: Image(image: AssetImage("assets/fire.png"),),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Image(image: AssetImage("assets/fire.png"),),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Image(image: AssetImage("assets/fire.png"),),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Image(image: AssetImage("assets/fire.png"),),
                            ),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Image(image: AssetImage("assets/fire.png"),),
                            ),
                          ],
                        ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news3img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news4img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news5img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news6img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news7img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news1img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color(0xffFEFEFE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("assets/news4img.png"),
                      height: 85,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Kick Off: Ten Hag shots at Man\nUtd start; mocksRonaldo',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff17191C),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5),

                        ),
                        Padding(padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                              Padding(padding: EdgeInsets.only(right: 5),
                                child: Image(image: AssetImage("assets/fire.png"),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}