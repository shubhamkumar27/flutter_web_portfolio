import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/ResponsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/widgets/Aboutme.dart';
import 'package:portfolio_app/widgets/Experience.dart';
import 'package:portfolio_app/widgets/Projects.dart';
import 'package:portfolio_app/widgets/Contact.dart';
import 'package:url_launcher/url_launcher.dart';

class Landingpage extends StatelessWidget {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
          vertical: 20.0, horizontal: 40.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              SizedBox(height: 20,),
              ResponsiveLayout.isSmallScreen(context) ?
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 50,
                              )],
                              borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.20 + 4),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.20,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('images/profile.jpg'),
                            )),
                        SizedBox(height: 20,),
                        Text("Hi !   I am", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan( text: "Shubham Kumar", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                        )
                      ],
                    ),
                  ) : Container(
                padding: EdgeInsets.symmetric(vertical: 90, horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.black,
                            blurRadius: 50
                          )],
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.10 + 2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width*0.10,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("Hi !   I am", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan( text: "Shubham Kumar", style: TextStyle(color: Colors.black, fontSize: 60, fontWeight: FontWeight.bold,),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text("Software Developer | Python Programmer", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: social,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Aboutme(),
              SizedBox(height: 30,),
              if (!ResponsiveLayout.isSmallScreen(context))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text("Experience", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
                ),
              SizedBox(height: 10,),
              Experience(),
              SizedBox(height: 40,),
              if (!ResponsiveLayout.isSmallScreen(context))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text("Projects", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
                ),
              SizedBox(height: 10,),
              Projects(),
              SizedBox(height: 30,),
            ],
          ),
        )),
        contact()
      ],
    );
  }
}
