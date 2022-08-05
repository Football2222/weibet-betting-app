import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'Cong.dart';

class forget2 extends StatefulWidget {
  const forget2({Key? key}) : super(key: key);

  @override
  State<forget2> createState() => _forget2State();
}

class _forget2State extends State<forget2> {
  OtpFieldController otpController = OtpFieldController();

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
        title: Text("OTP",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              child: Center(
                child: Text(
                  "Sms has been sent to your registered \n phone number check & put OTP here.",
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: Color.fromARGB(255, 99, 96, 96)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }),

                // Container(
                //   margin: EdgeInsets.only(
                //     top: 22,
                //     left: 10,
                //   ),
                //   child: SizedBox(
                //     width: 50,
                //     height: 80,
                //     child: TextFormField(
                //       autofocus: true,
                //       keyboardType: TextInputType.emailAddress,
                //       autovalidateMode: AutovalidateMode.onUserInteraction,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         focusedBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(12.0)),
                //             borderSide: BorderSide(
                //                 color: Color.fromARGB(255, 248, 192, 71))),
                //         fillColor:
                //             Color.fromARGB(255, 214, 212, 212).withOpacity(0.6),
                //         filled: true,
                //         contentPadding: EdgeInsets.only(left: 5),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     top: 22,
                //     left: 17,
                //   ),
                //   child: SizedBox(
                //     width: 50,
                //     height: 80,
                //     child: TextFormField(
                //       autofocus: true,
                //       keyboardType: TextInputType.emailAddress,
                //       autovalidateMode: AutovalidateMode.onUserInteraction,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         focusedBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(12.0)),
                //             borderSide: BorderSide(
                //                 color: Color.fromARGB(255, 248, 192, 71))),
                //         fillColor:
                //             Color.fromARGB(255, 214, 212, 212).withOpacity(0.6),
                //         filled: true,
                //         contentPadding: EdgeInsets.only(left: 5),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     top: 22,
                //     left: 17,
                //   ),
                //   child: SizedBox(
                //     width: 60,
                //     height: 80,
                //     child: TextFormField(
                //       autofocus: true,
                //       keyboardType: TextInputType.emailAddress,
                //       autovalidateMode: AutovalidateMode.onUserInteraction,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         focusedBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(12.0)),
                //             borderSide: BorderSide(
                //                 color: Color.fromARGB(255, 248, 192, 71))),
                //         fillColor:
                //             Color.fromARGB(255, 214, 212, 212).withOpacity(0.6),
                //         filled: true,
                //         contentPadding: EdgeInsets.only(left: 5),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     top: 22,
                //     left: 17,
                //   ),
                //   child: SizedBox(
                //     width: 60,
                //     height: 80,
                //     child: TextFormField(
                //       autofocus: true,
                //       keyboardType: TextInputType.emailAddress,
                //       autovalidateMode: AutovalidateMode.onUserInteraction,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         focusedBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(12.0)),
                //             borderSide: BorderSide(
                //                 color: Color.fromARGB(255, 248, 192, 71))),
                //         fillColor:
                //             Color.fromARGB(255, 214, 212, 212).withOpacity(0.6),
                //         filled: true,
                //         contentPadding: EdgeInsets.only(left: 5),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Resend ",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.79,
              height: MediaQuery.of(context).size.height * 0.073,
              child: Center(
                  child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => cong()));
                },
                child: Text(
                  "Continue",
                  style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500),
                ),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff018DF5)),
            ),
          ),
        ]),
      ),
    );
  }
}
