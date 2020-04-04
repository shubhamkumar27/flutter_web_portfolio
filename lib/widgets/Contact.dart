import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class contact extends StatelessWidget {
  List<Widget> social = [
    IconButton(
      icon: Icon(FontAwesomeIcons.githubSquare),
      iconSize: 40,
      color: Colors.black,
      onPressed: () => {launch('https://github.com/shubhamkumar27')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.linkedin),
      iconSize: 40,
      color: Colors.black,
      onPressed: () => {launch('https://www.linkedin.com/in/shubham-kumar-7b539b151/')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.instagramSquare),
      iconSize: 40,
      color: Colors.black,
      onPressed: () => {launch('https://www.instagram.com/i.m.shubhamkr/')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.facebookSquare),
      iconSize: 40,
      color: Colors.black,
      onPressed: () => {launch('https://www.facebook.com/shubham.kumar.8180323')},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.envelopeSquare),
      iconSize: 40,
      color: Colors.black,
      onPressed: () => {launch('mailto:shubhamkumar8180323@gmail.com')},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/11.jpg'),
        )
      ),
      child: Column(
        children: <Widget>[
          Text("Contact", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: social,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.phoneAlt, size: min(MediaQuery.of(context).size.width*0.04,20),),
              Text("+91 8700406199  |  ",style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.04,20), fontWeight: FontWeight.bold),),
              Icon(FontAwesomeIcons.mapMarkerAlt, size: min(MediaQuery.of(context).size.width*0.04,20),),
              Text(" Delhi. India",style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.04,20), fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Text("Made with ❤ by Shubham  |  ©Shubham Kumar 2020", style: TextStyle(fontSize: min(MediaQuery.of(context).size.width*0.03,20),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

