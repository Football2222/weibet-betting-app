import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomNav.dart';


class Slide extends StatelessWidget {
  const Slide({
    Key? key,
  }) : super(key: key);

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
                'Notification',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent, // appbar color.
              actions: [
                TextButton(onPressed: (){}, child: Text(
                  'Clear all',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                ),),

              ],
            ),

          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: const [
              SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
                child: ListTile(
                leading: Container(
                  child:IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/notiico1.svg',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                    'You Won the Bet',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                    Text(
                      'Swap right to delete',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff091C3F),
                      ),
                    ),],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/bluedot.svg',

                  ),
                ),
              ),
            ),
            Container(height: 1,
            color: Color(0xffD8D8D8),),
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
                leading: Container(
                  child:IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/notiico1.svg',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                    'You Won the Bet',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                    Text(
                      'Swap right to delete',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff091C3F),
                      ),
                    ),],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/bluedot.svg',

                  ),
                ),
              ),
            ),
            Container(height: 1,
              color: Color(0xffD8D8D8),),
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
                leading: Container(
                  child:IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/notiico1.svg',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                    'You Won the Bet',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                    Text(
                      'Swap right to delete',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff091C3F),
                      ),
                    ),],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/bluedot.svg',

                  ),
                ),
              ),
            ),
            Container(height: 1,
              color: Color(0xffD8D8D8),),
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
                leading: Container(
                  child:IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/notiico1.svg',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                    'You Won the Bet',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                    Text(
                      'Swap right to delete',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff091C3F),
                      ),
                    ),],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/bluedot.svg',

                  ),
                ),
              ),
            ),
            Container(height: 1,
              color: Color(0xffD8D8D8),),
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
                leading: Container(
                  child:IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/notiico1.svg',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                    'You Won the Bet',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                    Text(
                      'Swap right to delete',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff091C3F),
                      ),
                    ),],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/bluedot.svg',

                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

void doNothing(BuildContext context) {}
