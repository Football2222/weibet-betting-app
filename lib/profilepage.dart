import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'Payment Deposit.dart';
import 'Payment Withdraw.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File? _profileImage;
  Future _pickProfileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;

      final imageTemporary = File(image.path);
      setState(() => _profileImage = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image error: $e');
    }
  }
  int _value = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 45),
          child: Center(
            child: Text("Profile",
                style: GoogleFonts.poppins(fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                child:Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                            ),
                            child: Column(
                              children: [

                                Center(
                                  child: SizedBox(
                                    width: 130,
                                    height: 130,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade200,
                                      backgroundImage: _profileImage != null ? FileImage(_profileImage!) : null,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 5,
                                            right: 5,
                                            child: GestureDetector(
                                              onTap: _pickProfileImage,
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue.shade400,
                                                  border: Border.all(color: Colors.white, width: 3),
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                child: const Icon(
                                                  Icons.camera_alt_sharp,
                                                  color: Colors.white,
                                                  size: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Balance: \$2000",
                      style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const deposit()),);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "Deposit",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.052,
                            width: MediaQuery.of(context).size.width * 0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const withdraw()),);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "Withdraw",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.052,
                            width: MediaQuery.of(context).size.width * 0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 1, 68, 120),
                        Color.fromARGB(255, 41, 30, 250),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(
                      "Edit Name",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Dexter James",
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 210, 205, 205),
                      wordSpacing: 0.003),
                  contentPadding: EdgeInsets.only(left: 5),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(
                      "Edit Date of Birth",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "16-10-1998",
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 210, 205, 205),
                      wordSpacing: 0.003),
                  contentPadding: EdgeInsets.only(left: 5),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 200, 199, 199)
                                .withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.37,
                    child: Center(
                      child: Row(
                        children: [
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                      (states) => Color(0xff018DF5)),
                              value: 0,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 0;
                                });
                              }),
                          Text(
                            "Male",
                            style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 97, 96, 96),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 200, 199, 199)
                                .withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.37,
                    child: Row(
                      children: [
                        Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff018DF5)),
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = 1;
                              });
                            }),
                        FittedBox(
                          child: Text(
                            "FeMale",
                            style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 97, 96, 96),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(
                      "Edit Address",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Street10, House10, Mahatam,USA",
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 210, 205, 205),
                      wordSpacing: 0.003),
                  contentPadding: EdgeInsets.only(left: 5),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 37,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    child: Text(
                      "Edit About Descriptions",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
              height: 70,
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Hi it's Dexter I am a software engineer",
                  hintStyle: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 210, 205, 205),
                      wordSpacing: 0.003),
                  contentPadding: EdgeInsets.only(left: 5),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
