import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shubham/widgets/ResponsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shubham/pages/Experience.dart';
//import 'package:portfolio_app/widgets/Projects.dart';
//import 'package:portfolio_app/widgets/Contact.dart';
import 'package:url_launcher/url_launcher.dart';

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

List<Widget> comp = [
  GestureDetector(
    onTap: () => {launch('https://codechef.com/users/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: Image(image:AssetImage('assets/codechef.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('Codechef' , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ],
    ),
  ),
  SizedBox(width: 20,),
  GestureDetector(
    onTap: () => {launch('https://hackerrank.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image(image:AssetImage('assets/hackerrank.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('HackerRank', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ],
    ),
  ),
  SizedBox(width: 20,),
  GestureDetector(
    onTap: () => {launch('https://leetcode.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image(image:AssetImage('assets/leetcode.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('Leetcode', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
      ],
    ),
  ),
];


class Landingpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return mobilehome();
    } else {
      return webhome();
    }
  }
}

class webhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),
              Text("Hi !   I am", style: TextStyle(color: Colors.blueAccent, fontSize: 35, fontWeight: FontWeight.bold),),
//              SizedBox(height: 5,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan( text: "Shubham Kumar", style: GoogleFonts.exo2(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold,),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Software Developer | Python Programmer", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: social,
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    width: MediaQuery.of(context).size.width*0.4,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan( text: "I am a passionate programmer and a tech enthusiast who is always open to explore new technologies. I have worked on various projects related to Django, Flutter and Internet of things. Also, I have recently started exploring the field of Competitive programming. Currently, I am a Junior at Maharaja Agrasen Institute of Technology with a Bachelors of Technology focused on Electronics and Communication Engineering.",
                        style: GoogleFonts.lato(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.016, ),),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Image(
                          image: AssetImage('assets/sde.png'),
                          width:  MediaQuery.of(context).size.width*0.25,
                        ),)
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: comp,
                ),
              ),
            ],
          ),)
      ],
    );
  }
}

class mobilehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30,left: 10, right: 10),
      height: MediaQuery.of(context).size.height,
      child: Column(

        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: MediaQuery.of(context).size.width*0.2
                )],
                borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.1 + 2),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height*0.1,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/profile.jpg'),
              )),
          SizedBox(height: 20,),
          Text("Hi !   I am", style: TextStyle(color: Colors.blueAccent, fontSize: MediaQuery.of(context).size.height*0.03, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan( text: "Shubham Kumar", style: GoogleFonts.exo2(color: Colors.white, fontSize: max(MediaQuery.of(context).size.height*0.043,MediaQuery.of(context).size.width*0.05), fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Text("Software Developer | Python Programmer", style: TextStyle(color: Colors.white, fontSize: 10),),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: social,
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan( text: "I am a passionate programmer and a tech enthusiast who is always open to explore new technologies. I have worked on various projects related to Django, Flutter and Internet of things. Also, I have recently started exploring the field of Competitive programming. Currently, I am a Junior at Maharaja Agrasen Institute of Technology with a Bachelors of Technology focused on Electronics and Communication Engineering.",
                style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.025, ),),
            ),
          ),
        ],
      ),
    );
  }
}
