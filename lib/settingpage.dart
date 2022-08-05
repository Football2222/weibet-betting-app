import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Languages.dart';
import 'dropdown.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1),
              child: Text(
                "Choose Language",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Background color
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "English",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Background color
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Chinease",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  void cshowDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2),
              child: Text(
                "Rate Us",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: RatingBar.builder(
                        glowColor: Colors.white,
                        unratedColor: Color.fromARGB(255, 234, 230, 230),
                        initialRating: 0,
                        minRating: 1,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Color(0xff090F47),
        ),
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
              color: Color(0xff090F47), fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Row(
              children: [
                Container(
                  height: 68,
                  width: 63,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/news6img.png'),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          "Welcome",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 95, 92, 92)),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "Mr. Dexter James",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 28, 28, 28)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    "About US",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 206, 198, 198),
                ),
                SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Languagedropdown()),
                    );
                  },
                  child: FittedBox(
                    child: Text(
                      "Change Language",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // TextButton(
                //   onPressed: () {
                //     showDialog(
                //         context: context,
                //         builder: (BuildContext context) {
                //           return Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 100, bottom: 200),
                //             child: AlertDialog(
                //               shape: RoundedRectangleBorder(

                //                   borderRadius:
                //                       BorderRadius.all(Radius.circular(10.0))),
                //               content: Column(
                //                 children: [Text("Choose Language")],
                //               ),
                //             ),
                //           );
                //         });
                //   },
                //   child: FittedBox(
                //     child: Text(
                //       "Change Language",
                //       style: GoogleFonts.poppins(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w600,
                //           fontSize: 16),
                //     ),
                //   ),
                // ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 206, 198, 198),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: cshowDialog,
                  child: FittedBox(
                    child: Text(
                      "Rate US",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 206, 198, 198),
                ),
                SizedBox(
                  height: 10,
                ),
                FittedBox(
                  child: Text(
                    "Version 2.0",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 206, 198, 198),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
