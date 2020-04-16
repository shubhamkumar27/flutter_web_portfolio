import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:shubham/widgets/ResponsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  final Function pageCaller;

  Menu({@required this.pageCaller});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return Mobilemenu(pageCaller: widget.pageCaller,);
    } else {
      return Webmenu(pageCaller: widget.pageCaller,);
    }
  }
}

class Mobilemenu extends StatelessWidget {
  final Function pageCaller;
  Mobilemenu({@required this.pageCaller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildIconButton(ic: FontAwesomeIcons.userAlt, desc: 'ABOUT', onpressed: pageCaller, index: 0,),
          buildIconButton(ic: FontAwesomeIcons.swatchbook, desc: 'SKILLS', onpressed: pageCaller,index: 3,),
          buildIconButton(ic: FontAwesomeIcons.briefcase, desc: 'WORK', onpressed: pageCaller,index: 1,),
          buildIconButton(ic: FontAwesomeIcons.solidLightbulb, desc: 'PROJECT', onpressed: pageCaller,index: 2,),
          buildIconButton(ic: FontAwesomeIcons.info, desc: 'CONTACT', onpressed: pageCaller,index: 4,),
          buildIconButton(ic: FontAwesomeIcons.fileDownload, desc: 'RESUME', onpressed: launch,index: null,),
        ],
      ),
    );
  }
}

class Webmenu extends StatelessWidget {
  final Function pageCaller;

  Webmenu({@required this.pageCaller});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: MediaQuery.of(context).size.width*0.05
                    )],
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.07 + 2),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width*0.07,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  )),
              SizedBox(height: 40,),
              Buttonbuilder(text: "About Me",onpressed: pageCaller, color: Colors.black, index: 0, ),
              SizedBox(
                height: 10,
              ),
              Buttonbuilder(text: "Experience",onpressed: pageCaller, color: Colors.black,index: 1,),
              SizedBox(
                height: 10,
              ),
              Buttonbuilder(text: "Projects",onpressed: pageCaller, color: Colors.black,index: 2,),
              SizedBox(
                height: 10,
              ),
              Buttonbuilder(text: "Contact",onpressed: pageCaller, color: Colors.purple,index: 4,),
              SizedBox(
                height: 10,
              ),
              Buttonbuilder(text: "Resume",onpressed: launch, color: Colors.black,index: null,),
            ],
          )
      ),
    );
  }
}

class Buttonbuilder extends StatelessWidget {
  final String text;
  final Color color;
  final Function onpressed;
  int index;
//  Pageprovider p = new Pageprovider();

  Buttonbuilder({@required this.text, this.onpressed, this.color,this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onpressed( index==null ? 'https://drive.google.com/open?id=1ISbdkTGk-aQmLnCPs2KhO2HI2VssPIdh':index),
      hoverColor: Color.fromRGBO(25, 25, 25, 1),
      child: Container(
        width: MediaQuery.of(context).size.width*0.25,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.015),
        ),
      ),
    );
  }
}

class buildIconButton extends StatelessWidget {
  IconData ic;
  String desc;
  Function onpressed;
  int index;

  buildIconButton({@required this.desc, this.onpressed, this.ic, this.index});

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          IconButton(
            hoverColor: Colors.white,
            onPressed: () => onpressed( index==null ? 'https://drive.google.com/open?id=1ISbdkTGk-aQmLnCPs2KhO2HI2VssPIdh':index),
            icon: Icon(ic),
            iconSize: min(MediaQuery.of(context).size.width*0.1, 40),
            color: Colors.white,
          ),
          Text(desc,
            style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.027),
          ),
        ],
      ),
    );
  }
}
