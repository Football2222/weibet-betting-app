import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomNav.dart';
class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => const Nav()),
                );
              },
              icon: SvgPicture.asset(
                'assets/back.svg',
                height: 20,
                width: 20,
              ),
            ),
            title: Text(
              'User Statistics',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent, // appbar color.
          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "All Time Statistics",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9093AC),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15,top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '5th,Jan,2022',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Team:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            'West Indies',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bet Cost:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$200',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profit:',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$50',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loss',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$0',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Earning',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                          Text(
                            '\$250',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff090F47),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:10),
                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
