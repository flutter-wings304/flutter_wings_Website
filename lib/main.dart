import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_wings_website/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

Future main() async {
  await dotenv.load(fileName: "lib/.env");
  var url = window.location;
  print(url);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Your App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.notoSans().fontFamily),
      home: const Welcomescreen(),
    );
  }
}

