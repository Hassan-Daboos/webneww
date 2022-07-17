import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webneww/constants.dart';

import 'view/screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: hPrimaryColor,
          scaffoldBackgroundColor: hDarkColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme
              .of(context)
              .textTheme).apply(bodyColor: Colors.white).
          copyWith(
            bodyText1: TextStyle(color: hBodyTextColor),
            bodyText2: TextStyle(color: hBodyTextColor),
            headline1:TextStyle(color: hBodyTextColor),
          )

      ),
      home: const HomeScreen(),
    );
  }
}
