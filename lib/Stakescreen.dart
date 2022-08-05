import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Odsscreen.dart';
import 'betsuccesspage.dart';
class stake extends StatefulWidget {
  const stake({Key? key}) : super(key: key);
  @override
  State<stake> createState() => _stakeState();
}
class _stakeState extends State<stake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ods()),
            );
          },
          icon: SvgPicture.asset(
            'assets/back.svg',
            height: 20,
            width: 20,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 45),
          child: Center(
            child: Text("Stake",
                style: GoogleFonts.poppins(fontSize: 23, color: Colors.black)),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child:

              Image.asset(
                "assets/logo3.png",
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.53,
              ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 200, 199, 199).withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Please Type The Stake here..!",
                hintStyle: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 84, 82, 82), wordSpacing: 0.003),
                contentPadding: EdgeInsets.only(left: 5),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => successbet()));
            },
            child: Container(
              child: Center(
                child: Text(
                  "PLACE  BET",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff018DF5),
                  borderRadius: BorderRadius.circular(26)),
            ),
          )
        ],
      ),
    );
  }
}