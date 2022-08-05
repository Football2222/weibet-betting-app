import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weibetapplication/signin.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 280, bottom: 0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        constraints: new BoxConstraints(
                          minHeight: 300.0,
                          maxHeight: 500.0,
                          minWidth: 250.0,
                          maxWidth: 300.0,
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    // email or phonefield
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.height * 0.70,
                                        child: TextFormField(
                                          keyboardType: TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Enter Email or Phone",
                                            hintStyle: GoogleFonts.poppins(color: Colors.black),
                                            contentPadding: EdgeInsets.only(left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Reset Password Button
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Align(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.79,
                                          height: MediaQuery.of(context).size.height * 0.073,
                                          child: Center(
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder: (context) => signinscreen()));
                                                },
                                                child: Text(
                                                  "Reset Password",
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
                                    const SizedBox(height: 20,),
                                    Container(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () => {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => signinscreen()))
                                        },
                                        child: const Text(
                                          'Back to login',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff939393),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
