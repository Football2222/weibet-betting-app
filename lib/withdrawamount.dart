import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav1.dart';
class withdrawamount extends StatefulWidget {
  const withdrawamount({Key? key}) : super(key: key);
  @override
  State<withdrawamount> createState() => _withdrawamountState();
}
class _withdrawamountState extends State<withdrawamount> {
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
        centerTitle: true,
        title: Text("Withdraw Amount",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 150),
          child: Center(
            child: Text("Enter Amount\nYou Want To Withdraw",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),



          ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
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
                  hintText: "Please Enter The Amount.",
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 84, 82, 82), wordSpacing: 0.003),
                  contentPadding: EdgeInsets.only(left: 5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Nav1()));
            },
            child: Container(
              child: Center(
                child: Text(
                  "Withdraw",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
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