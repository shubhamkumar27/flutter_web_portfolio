import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shubham/widgets/ResponsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return builder();
    } else {
      return SingleChildScrollView(
        child: builder()
      );
    }
    }
  }

class builder extends StatelessWidget {

  List<Widget> social = [
    IconButton(
      icon: Icon(FontAwesomeIcons.github),
      iconSize: 30,
      color: Colors.white,
      onPressed: () => {launch('https://github.com/shubhamkumar27')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.linkedinIn),
      iconSize: 30,
      color: Colors.white,
      onPressed: () =>
      {
        launch('https://www.linkedin.com/in/shubham-kumar-7b539b151/')
      },
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.instagram),
      iconSize: 30,
      color: Colors.white,
      onPressed: () => {launch('https://www.instagram.com/i.m.shubhamkr/')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.facebookF),
      iconSize: 30,
      color: Colors.white,
      onPressed: () =>
      {
        launch('https://www.facebook.com/shubham.kumar.8180323')
      },
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.envelope),
      iconSize: 30,
      color: Colors.white,
      onPressed: () => {launch('mailto:shubhamkumar8180323@gmail.com')},
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("< Let's Connect >", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 40,),
            Container(
              child: Column(
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.center,children: social,),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.phoneAlt, size: min(MediaQuery.of(context).size.width*0.05,15),color: Colors.white,),
                      Text("+91 8700406199",style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.05,15), fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Icon(FontAwesomeIcons.mapMarkerAlt, size: min(MediaQuery.of(context).size.width*0.05,15),color: Colors.white,),
                      Text(" Delhi. India",style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.05,15), fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/prog.png'),
                    height: MediaQuery.of(context).size.height*0.4,
                  ),
                  SizedBox(height: 10,),
                  Text("Made with ❤ by Shubham  |  © Shubham Kumar 2020", style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.03,15),color: Colors.lightBlueAccent),),
                  SizedBox(height: 40,)
                ],
              ),
            )
          ],
        ),

    );
  }
}

