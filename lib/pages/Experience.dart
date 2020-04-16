import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shubham/widgets/ResponsiveLayout.dart';
import 'package:url_launcher/url_launcher.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return mobileexp();
    } else {
      return webexp();
    }
  }
}

class mobileexp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("< Work Experience >", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          buildermob(img: 'assets/crio.jpg',role: 'Student Developer', company: 'Crio.Do',url: 'https://criodo.github.io/Crio-Launch-Feb-2020-shubhamkumar8180323/',),
          SizedBox(height: 20,),
          buildermob(img: 'assets/opengenus.png',role: 'Algorithm & Data Structures Developer', company: 'Opengenus Foundation',url: 'https://iq.opengenus.org/author/shubham-kumar/'),
          SizedBox(height: 20,),
          buildermob(img: 'assets/robodatics.png',role: 'Electronics and Automation Intern', company: 'RoboDatics',url: 'https://drive.google.com/open?id=1-Yi1Ji2ZZo4wcAD6O7zDmkU6BkFC8hcl',),
        ],
      ),
    );
  }
}

class webexp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("< Work Experience >", style: TextStyle(color: Colors.blueAccent, fontSize: 35, fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    builderweb(img: 'assets/crio.jpg',role: 'Student Developer', company: 'Crio.Do',url: 'https://criodo.github.io/Crio-Launch-Feb-2020-shubhamkumar8180323/',),
                    SizedBox(width: 5,),
                    builderweb(img: 'assets/opengenus.png',role: 'Algorithm & Data Structures Developer', company: 'Opengenus Foundation',url: 'https://iq.opengenus.org/author/shubham-kumar/',),
                    SizedBox(width: 5,),
                    builderweb(img: 'assets/robodatics.png',role: 'Electronics and Automation Intern', company: 'RoboDatics',url: 'https://drive.google.com/open?id=1-Yi1Ji2ZZo4wcAD6O7zDmkU6BkFC8hcl',),
                  ],
                ),
              ])
      ),
    );
  }
}

class buildermob extends StatelessWidget {
  String img;
  String role;
  String company;
  String url;

  buildermob({@required this.company, this.img, this.role, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      width: MediaQuery.of(context).size.width*0.70,
      height: min(MediaQuery.of(context).size.width*0.35,MediaQuery.of(context).size.height*0.25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              child: Image(image: AssetImage(img),fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            ),
          ),
          Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan( text: role,
                      style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.040, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan( text: company,
                      style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.027, fontWeight: FontWeight.bold),),
                  ),
                  InkWell(
                      child: RichText(text : TextSpan(text: "Details", style: TextStyle(color: Colors.blue, fontSize: MediaQuery.of(context).size.width*0.025),),textAlign: TextAlign.end),
                      onTap: () => launch(url)),
                ],
              ),
          ),
          SizedBox(width: 5,),
        ],
      ),
    );
  }
}

class builderweb extends StatelessWidget {
  String img;
  String role;
  String company;
  String url;

  builderweb({@required this.company, this.img, this.role, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      width: MediaQuery.of(context).size.width*0.20,
      height: MediaQuery.of(context).size.width*0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image(image: AssetImage(img),fit: BoxFit.cover,
                height:MediaQuery.of(context).size.width*0.20,),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: role,
                      style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.015, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: company,
                      style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        height: MediaQuery.of(context).size.width*0.02,
                        child: Text("Details", style: TextStyle(color: Colors.blue, fontSize: MediaQuery.of(context).size.width*0.010),),
                        textColor: Colors.white,
                        onPressed: () => {launch(url)},
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



