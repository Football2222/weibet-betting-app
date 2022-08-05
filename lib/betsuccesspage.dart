import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav.dart';

class successbet extends StatefulWidget {
  const successbet({Key? key}) : super(key: key);

  @override
  State<successbet> createState() => _successbetState();
}

class _successbetState extends State<successbet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          iconSize: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Center(
                  child: Container(
                      padding: EdgeInsets.all(60),
                      child: Image.asset(
                        "assets/Cong.png",
                      ))),
              Text(
                "Bet Placed Successful",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Congratulations your bet is\nplaced successfully.\nNow wait for the match.\nGood Luck",
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color.fromARGB(255, 104, 103, 103),),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Align(

                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    constraints: new BoxConstraints(
                      minHeight: 35.0,
                      maxHeight: 60.0,
                      minWidth: 250.0,
                      maxWidth: 300.0,
                    ),
                    child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Nav()));
                          },
                          child: Text(
                            "Go Back To Home",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff018DF5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
