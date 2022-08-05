import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);
  @override
  State<ball> createState() => _ballState();
}
class _ballState extends State<ball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.33,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            "2.9",
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
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.33,
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
                      padding: const EdgeInsets.all(8.0),
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
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.33,
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
                      padding: const EdgeInsets.all(8.0),
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
            ],
          ),
                  ],
      ),
    );
  }
}
