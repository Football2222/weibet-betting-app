import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weibetapplication/signin.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Watch Sports Live',
              body: 'Watch Live Scores Of Your Favorite Football Sports Games Of All The Countries',
              image: buildImage('assets/ebook.png',),
              decoration: getPageDecoration(context),
            ),
            PageViewModel(
              title: 'Make Your Own Bet',
              body: 'Test Your Luck To Make Best On Your Favorite Football Sports Matches.',
              image: buildImage('assets/readingbook.png'),
              decoration: getPageDecoration1(context),
            ),
            PageViewModel(
              title: 'Get Started To Watch Sports & Make Bets',
              body: 'Watch Your Favorite Matches & Make Money, Good Luck.',
              image: buildImage('assets/manthumbs.png',),
              decoration: getPageDecoration2(context),
            ),
          ],
          done: Text('Signin', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue, fontSize: 14,),),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: Color(0xff9093AC),
          ), ),
          onSkip: () => goToHome(context),
          next: Text("Next", style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.blue,
          ),),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => signinscreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(8, 8),
        activeSize: Size(8, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration(context) => PageDecoration(
        titleTextStyle: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayMedium,
          fontSize: 22,
          color: Color(0xff090F47),
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.displayMedium,
          fontSize: 16,
          color: Color(0xff9093AC),
          fontWeight: FontWeight.w300,
        ),
        descriptionPadding: EdgeInsets.fromLTRB(40, 0, 40, 0).copyWith(bottom: 10),
        imagePadding: EdgeInsets.fromLTRB(45, 120, 45, 0),
        imageFlex: 1,
        pageColor: Colors.white,
      );
  PageDecoration getPageDecoration1(context) => PageDecoration(
    titleTextStyle: GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 22,
      color: Color(0xff090F47),
      fontWeight: FontWeight.bold,
    ),
    bodyTextStyle: GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 16,
      color: Color(0xff9093AC),
      fontWeight: FontWeight.w300,
    ),
    descriptionPadding: EdgeInsets.fromLTRB(40, 0, 40, 0).copyWith(bottom: 10),
    imagePadding: EdgeInsets.fromLTRB(30, 135, 30, 0),
    imageFlex: 1,
    pageColor: Colors.white,
  );
  PageDecoration getPageDecoration2(context) => PageDecoration(
    titleTextStyle: GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 22,
      color: Color(0xff090F47),
      fontWeight: FontWeight.bold,
    ),
    bodyTextStyle: GoogleFonts.poppins(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 16,
      color: Color(0xff9093AC),
      fontWeight: FontWeight.w300,
    ),
    descriptionPadding: EdgeInsets.fromLTRB(40, 0, 40, 0).copyWith(bottom: 10),
    imagePadding: EdgeInsets.fromLTRB(30, 120, 30, 0),
    imageFlex: 1,
    pageColor: Colors.white,
  );
}
