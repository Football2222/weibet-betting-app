import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weibetapplication/signin.dart';

import 'Otp.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();
  TextEditingController no3 = TextEditingController();
  TextEditingController no4 = TextEditingController();
  File? _profileImage;
  final _signupFormKey = GlobalKey<FormState>();
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
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
            Column(
              children: [
                Align(
                  heightFactor: MediaQuery.of(context).size.height * 0.00025,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.height * 0.70,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: no1,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          contentPadding: EdgeInsets.only(left: 5),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Align(
                  heightFactor: MediaQuery.of(context).size.height * 0.00025,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.height * 0.70,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: no2,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: "Mobile Number",
                          contentPadding: EdgeInsets.only(left: 5),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  heightFactor: MediaQuery.of(context).size.height * 0.0027,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.height * 0.70,
                      child: TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: no3,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          contentPadding: EdgeInsets.only(left: 5),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  heightFactor: MediaQuery.of(context).size.height * 0.0008,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.height * 0.70,
                      child: TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: no4,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.only(left: 5),
                        ),
                      ),
                    ),
                  ),
                ),
                //  heightFactor: MediaQuery.of(context).size.height * 0.003,
                Align(
                  heightFactor: MediaQuery.of(context).size.height * 0.0024,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.79,
                    height: MediaQuery.of(context).size.height * 0.073,
                    child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => forget2()));
                          },
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff018DF5)),
                  ),
                ),
                Align(
                  widthFactor: MediaQuery.of(context).size.width * 0.13,
                  heightFactor: MediaQuery.of(context).size.height * 0.00013,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.22,
                        decoration: BoxDecoration(color: Colors.black26),
                      ),
                      Center(
                        child: Container(
                          child: Text(
                            "  or Login with   ",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color.fromARGB(255, 116, 115, 115)),
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.22,
                        decoration: BoxDecoration(color: Colors.black26),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 33, right: 33),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset("assets/google.png"),
                        margin: EdgeInsets.only(left: 30),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                          color: Color.fromARGB(255, 248, 248, 248),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image.asset("assets/call.png"),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                          color: Color.fromARGB(255, 248, 248, 248),
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/twitter.png",
                        ),
                        margin: EdgeInsets.only(right: 29),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                          color: Color.fromARGB(255, 248, 248, 248),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you already have account account?",
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 112, 111, 111)),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signinscreen()));
                    }, child: Text(
                      "Signin",
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 11, 194, 240)),
                    ),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}