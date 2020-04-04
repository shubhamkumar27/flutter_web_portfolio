//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/ResponsiveLayout.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return Mobilenavbar();
    } else {
      return Webnavbar();
    }
  }
}

class Mobilenavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      color: Colors.transparent,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Buttonbuilder(text: "Resume",onpressed: null, color: Colors.black,radius: 20.0,),
            ],
      )
    );
  }
}

class Webnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Buttonbuilder(text: "About Me",onpressed: null, color: Colors.black,radius: 20.0,),
              SizedBox(
                width: 30,
              ),
              Buttonbuilder(text: "Experience",onpressed: null, color: Colors.black,radius: 20.0,),
              SizedBox(
                width: 30,
              ),
              Buttonbuilder(text: "Projects",onpressed: null, color: Colors.black,radius: 20.0,),
              SizedBox(
                width: 30,
              ),
              Buttonbuilder(text: "Resume",onpressed: null, color: Colors.purple,radius: 20.0,),
            ],
          )
    );
  }
}

class Buttonbuilder extends StatelessWidget {
  final String text;
  final Color color;
  final onpressed;
  final double radius;
  final double size;

  Buttonbuilder({@required this.text, this.onpressed, this.color, this.radius, this.size});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      onPressed: () => onpressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }
}





