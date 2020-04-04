import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/ResponsiveLayout.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> comp = [
  GestureDetector(
    onTap: () => {launch('https://codechef.com/users/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        Image(image: AssetImage('images/codechef.png'), height: 50,),
        SizedBox(height: 5,),
        Text('Codechef')
      ],
    ),
  ),
  GestureDetector(
    onTap: () => {launch('https://hackerrank.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        Image(image: AssetImage('images/hackerrank.png'), height: 50,),
        SizedBox(height: 5,),
        Text('HackerRank')
      ],
    ),
  ),
  GestureDetector(
    onTap: () => {launch('https://leetcode.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        Image(image: AssetImage('images/leetcode.png'), height: 50,),
        SizedBox(height: 5,),
        Text('Leetcode')
      ],
    ),
  ),
];

class Aboutme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    if (ResponsiveLayout.isSmallScreen(context)) {
      return mobileme();
    } else {
      return webme();
    }
  }
}

class webme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("About Me", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan( text: "I am a passionate programmer and a tech enthusiast who is always open to explore new technologies. I have worked on various projects related to Django, Flutter and Internet of things. Also, I have recently started exploring the field of Competitive programming. Currently, I am a Junior at Maharaja Agrasen Institute of Technology with a Bachelors of Technology focussed on Electronics and Communication Engineering.",
                    style: TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.width*0.015, ),),
                ),
                SizedBox(height: 10,),
                Text("Competitive Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width*0.20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: comp,
                  ),
                )
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width*0.4,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              child: Image(image: AssetImage('images/sde.png'),)
          )
        ],
      ),
    );
  }
}

class mobileme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10,),
                Text("About Me", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
                SizedBox(height: 10,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan( text: "I am a passionate programmer and a tech enthusiast who is always open to explore new technologies. I have worked on various projects related to Django, Flutter and Internet of things. Also, I have recently started exploring the field of Competitive programming. Currently, I am a Junior at Maharaja Agrasen Institute of Technology with a Bachelors of Technology focussed on Electronics and Communication Engineering.",
                    style: TextStyle(color: Colors.black, fontSize: 20, ),),
                ),
                SizedBox(height: 10,),
                Text("Competitive Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,)
                  ),
                  width: MediaQuery.of(context).size.width*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: comp,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width*0.7,
                    child: Image(image: AssetImage('images/sde.png'),)),
              ],
            ),
    );
  }
}


