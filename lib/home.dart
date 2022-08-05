import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Odsscreen.dart';
import 'Slide.dart';
import 'Stakescreen.dart';
import 'Userstatisticspage.dart';
import 'newspage.dart';
class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}
class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(86),
            child: PreferredSize(
              preferredSize: Size.fromHeight(86),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 7, 0),
                child: AppBar(
                  leading: Padding(padding: EdgeInsets.only(left: 20),
                    child: Image(image: AssetImage("assets/logo2.png"),),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Wei',
                        style: GoogleFonts.sarina(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 19,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff17191c),
                        ),
                      ),
                      Text(
                        'bet',
                        style: GoogleFonts.sarina(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff018df5),
                        ),
                      ),
                    ],
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white, // appbar color.
                  actions: [
                    Row(
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)),
                          child: Text(
                            'Wallet',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Slide()),
                            );
                          },
                          icon: SvgPicture.asset(
                            'assets/notification.svg',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              // construct the profile details widget here
              SingleChildScrollView(
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                          child: SizedBox(
                            height: 55,
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    hintStyle: TextStyle(color: Colors.grey[800]),
                                    prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/searchicon.svg',
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/micicon.svg',
                                      ),
                                    ),
                                    suffixIconConstraints: BoxConstraints(
                                      minHeight: 60,
                                      maxHeight: 90,
                                    ),
                                    hintText: "Search",
                                    fillColor: Color(0xffF7F7F8)),
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20, right: 20, top:10),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Slide()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 12,
                                        offset:
                                        Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8, right: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                          child: SizedBox(
                                            height: 28,

                                            child: Image(image: AssetImage("assets/score.png"), ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 19, right: 19, bottom: 10, top: 10),
                                          child: Text(
                                            'Notify',
                                            style: GoogleFonts.poppins(
                                              textStyle: Theme.of(context).textTheme.displayMedium,
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff17191C),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                                      News()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 12,
                                        offset:
                                        Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8, right: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                          child: SizedBox(
                                            height: 28,

                                            child: Image(image: AssetImage("assets/news.png"), ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 19, right: 19, bottom: 10, top: 10),
                                          child: Text(
                                            'News',
                                            style: GoogleFonts.poppins(
                                              textStyle: Theme.of(context).textTheme.displayMedium,
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff17191C),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ods()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 12,
                                        offset:
                                        Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8, right: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                          child: SizedBox(
                                            height: 28,

                                            child: Image(image: AssetImage("assets/bets.png")),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                                          child: Text(
                                            'Bets',
                                            style: GoogleFonts.poppins(
                                              textStyle: Theme.of(context).textTheme.displayMedium,
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff17191C),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                                      Statistics()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 12,
                                        offset:
                                        Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                        child: SizedBox(
                                          height: 28,

                                          child: Image(image: AssetImage("assets/statistics.png")),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                                        child: Text(
                                          'Statistics',
                                          style: GoogleFonts.poppins(
                                            textStyle: Theme.of(context).textTheme.displayMedium,
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff17191C),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/4.8,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/header.png"),
                            ),
                          ),
                        ),
],
                    ),
                  ),
                ),
              ),

              // the tab bar with two items

              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.amberAccent,

                    tabs: [
                      Tab(
                        text: 'Highlights',
                      ),
                      Tab(
                        text: 'Upcomming',
                      ),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        Column(
                          children: [
                            // highlights-Tab
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                width: MediaQuery.of(context).size.width/7,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE9EAED),
                                                    borderRadius:
                                                    BorderRadius.circular(8)),
                                                child: Column(children: [
                                                  Text(
                                                    "1",
                                                    style: GoogleFonts.poppins(
                                                        color: Color(0xff018DF5)),
                                                  ),
                                                  Text(
                                                    "2.9",
                                                    style: GoogleFonts.poppins(
                                                        color:
                                                        Color.fromARGB(255, 8, 8, 8)),
                                                  ),
                                                ]),
                                            ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Image.asset(
                                              "assets/un.png",
                                            ),
                                              Text(
                                                "Westindies Group(A)",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13, fontWeight: FontWeight.bold),
                                              ),

                                            ],),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Portal",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Live Scores",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "08:10/12:45",
                                            style: GoogleFonts.poppins(
                                                color: Color(0xff018DF5)),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "1",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.9",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "X",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "3.2",
                                                      style: GoogleFonts.poppins(
                                                          color:
                                                          Color.fromARGB(255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width/100,
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => stake()),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/7,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE9EAED),
                                                      borderRadius:
                                                      BorderRadius.circular(8)),
                                                  child: Column(children: [
                                                    Text(
                                                      "2",
                                                      style: GoogleFonts.poppins(
                                                          color: Color(0xff018DF5)),
                                                    ),
                                                    Text(
                                                      "2.5",
                                                      style: GoogleFonts.poppins(
                                                          color: Color.fromARGB(
                                                              255, 8, 8, 8)),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ListView(
                      children: [
                        Column(
                          children: [
                            // Upcoming-Tabs
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:10, left:10, right:10),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset:
                                      Offset(-3, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children:[
                                                  Image.asset(
                                                    "assets/un.png",
                                                    width: 28,
                                                    height: 28,
                                                  ),
                                                  Text(
                                                    "Westindies",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "VS",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Image.asset(
                                                  "assets/un.png",
                                                  width: 28,
                                                  height: 28,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                    vertical: 3,
                                                    horizontal: 5.0,
                                                  ),
                                                  child: Text(
                                                    "Zimbabway",
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ],),
                                              Padding(
                                                padding: const EdgeInsets.only(left:5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Date",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }

}