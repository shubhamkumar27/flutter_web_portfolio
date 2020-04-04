import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Profilepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shubham Kumar',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,)
      ),
      home: Profilepage()
    );
  }
}
