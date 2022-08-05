// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weibetapplication/splashscreen.dart';
void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static final String title = 'Onboarding';
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: true,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const splash(),
  );
}