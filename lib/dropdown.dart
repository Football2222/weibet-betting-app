import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomNav2.dart';
class Languagedropdown extends StatefulWidget {
  Languagedropdown() : super();

  final String title = "DropDown Demo";

  @override
  LanguagedropdownState createState() => LanguagedropdownState();
}
class Country {
  int id;
  String name;
  Country(this.id, this.name);
  static List<Country> getCountries() {
    return <Country>[
      Country(1, 'Chinese'),
      Country(2, 'English'),
      Country(3, 'Spanish'),
      Country(4, 'German'),
      Country(5, 'Arabic'),
      Country(6, 'Portuguese'),
      Country(7, 'Dutch'),
    ];
    // Countries language
  }
}
class LanguagedropdownState extends State<Languagedropdown> {
  List<Country> _countries = Country.getCountries();
  late List<DropdownMenuItem<Country>> _dropdownMenuItems;
  Country?_selectedCountry;
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_countries);
    _selectedCountry = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Country>> buildDropdownMenuItems(List countries) {
    List<DropdownMenuItem<Country>> items = [];
    for (Country company in countries) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(
            company.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Country? selectedCompany) {
    setState(() {
      _selectedCountry = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Nav2()),
              );
            },
            icon: SvgPicture.asset(
              'assets/back.svg',
              height: 20,
              width: 20,
            ),
          ),
          title: Text(
            "Choose Language",
            style: GoogleFonts.poppins(
                color: Color(0xff090F47), fontWeight: FontWeight.w600),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    value: _selectedCountry,
                    items: _dropdownMenuItems,
                    isExpanded: true,
                    underline: SizedBox(),
                    onChanged: onChangeDropdownItem,
/*                    hint: Text(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),*/ // you can set hint like that.
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}