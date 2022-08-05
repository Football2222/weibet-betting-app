import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav1.dart';
import 'depositamount.dart';


class deposit extends StatefulWidget {
  const deposit({Key? key}) : super(key: key);

  @override
  State<deposit> createState() => _depositState();
}

class _depositState extends State<deposit> {
  String? radio;
  String? radipayment;
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
                  MaterialPageRoute(builder: (context) =>  Nav1()),
                );
              },
              icon: SvgPicture.asset(
                'assets/back.svg',
                height: 20,
                width: 20,
              ),
            ),
            title: Text(
              'Deposit',
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
          Padding(padding: EdgeInsets.only(left: 24, right: 24, top: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select Payment method',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration
                    (
                    border: Border.all(color: Color(0xffE6E7ED)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children:
                                  [
                                    Container(

                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffE6E7ED)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(image: AssetImage("assets/credit.png",), height: MediaQuery.of(context).size.height/18,width: MediaQuery.of(context).size.width/8,),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:16),
                                        child: Row(
                                          children: [
                                            Text(

                                              'Credit card',
                                              style: GoogleFonts.poppins(
                                                textStyle: Theme.of(context).textTheme.displayMedium,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Radio(
                                    value: "a",
                                    groupValue: radipayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        radipayment = value!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children:
                                  [
                                    Container(

                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffE6E7ED)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(image: AssetImage("assets/paypal.png",), height: MediaQuery.of(context).size.height/18,width: MediaQuery.of(context).size.width/8,),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:16),
                                        child: Row(
                                          children: [
                                            Text(

                                              'Paypal',
                                              style: GoogleFonts.poppins(
                                                textStyle: Theme.of(context).textTheme.displayMedium,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Radio(
                                    value: "b",
                                    groupValue: radipayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        radipayment = value!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children:
                                  [
                                    Container(

                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffE6E7ED)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(image: AssetImage("assets/goog.png",), height: MediaQuery.of(context).size.height/18,width: MediaQuery.of(context).size.width/8,),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:16),
                                        child: Row(
                                          children: [
                                            Text(

                                              'Google pay',
                                              style: GoogleFonts.poppins(
                                                textStyle: Theme.of(context).textTheme.displayMedium,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Radio(
                                    value: "c",
                                    groupValue: radipayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        radipayment = value!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children:
                                  [
                                    Container(

                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffE6E7ED)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(image: AssetImage("assets/apple.png",), height: MediaQuery.of(context).size.height/18,width: MediaQuery.of(context).size.width/8,),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:16),
                                        child: Row(
                                          children: [
                                            Text(

                                              'Apple pay',
                                              style: GoogleFonts.poppins(
                                                textStyle: Theme.of(context).textTheme.displayMedium,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Radio(
                                    value: "d",
                                    groupValue: radipayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        radipayment = value!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),),
                ),
              ),
              // button
              Center(
                child: Padding(padding: EdgeInsets.only(top: 30),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    elevation: 5.0,
                    minWidth: 280.0,
                    height: 55,
                    color: Color(0xFF4157FF),
                    child: new Text('Continue',
                        style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => depositamount()));
                    },
                  ),),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
