import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav.dart';
import 'forget_password_page.dart';
import 'imgpic.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({Key? key}) : super(key: key);

  @override
  State<signinscreen> createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  TextEditingController tec = TextEditingController();
  TextEditingController tectec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: Image.asset(
                      "assets/logo2.png",
                      height: 180,
                      width: 180,
                    ))),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SizedBox(
                width: MediaQuery.of(context).size.height * 0.70,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: tec,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "UserName/Phone",
                    hintStyle: GoogleFonts.poppins(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SizedBox(
                  width: MediaQuery.of(context).size.height * 0.70,
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: tectec,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                    ),
                  ),
                ),
              ),
            ),
            //  heightFactor: MediaQuery.of(context).size.height * 0.003,
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
                              MaterialPageRoute(builder: (context) => Nav()));
                        },
                        child: Text(
                          "Login",
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
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                child: TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
                }, child: Text(
                  "Forget Password?",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color.fromARGB(255, 116, 115, 115)),
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.20,
                    decoration: BoxDecoration(color: Colors.black26),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "   or Login with   ",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color.fromARGB(255, 116, 115, 115)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.18,
                    decoration: BoxDecoration(color: Colors.black26),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12, left: 33, right: 33),
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
              children: [Text("Dont Havev Account?", style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color.fromARGB(255, 116, 115, 115)),),
                TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                }, child: Text("Signup", style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff018DF5)),),),],
            ),
          ],
        ),
      ),
    );
  }
}
