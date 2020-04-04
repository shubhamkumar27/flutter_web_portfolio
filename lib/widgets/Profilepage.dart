import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/Navbar.dart';
import 'package:portfolio_app/widgets/Landingpage.dart';
import 'package:portfolio_app/widgets/ResponsiveLayout.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage('images/1.jpg'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                    )
                    ),
                    child: Landingpage(),
                      ),
                ),
                NavBar(),
              ],
            ),
          ),
    );
  }
}