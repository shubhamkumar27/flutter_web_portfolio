import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/ResponsiveLayout.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)){
      return projectmob();
    } else{
      return projectweb();
    }
  }
}

class projectmob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(child: Text("Projects", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              builder(img: 'images/flutter.jpg',name: 'Covid 19 tracker', desc: 'Flutter',a: 0.35, b: 0.03, c: 0.02,url: 'https://github.com/shubhamkumar27/Covid_19_flutter_app',),
              SizedBox(width: 5,),
              builder(img: 'images/django.jpg',name: 'Visitor Management System', desc: 'Django',a: 0.35, b: 0.03, c: 0.02,url: 'https://github.com/shubhamkumar27/Django-Visitor-Management-System',),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              builder(img: 'images/tkinter.png',name: 'Face Recognition Based Attendance System', desc: 'Flutter',a: 0.35, b: 0.03, c: 0.02,url: 'https://github.com/shubhamkumar27/Face_recognition_based_attendance_system',),
              SizedBox(width: 5,),
              builder(img: 'images/django1.jpg',name: 'Wifi based RFID Attendance System', desc: 'Flutter',a: 0.35, b: 0.03, c: 0.02,url: 'https://github.com/shubhamkumar27/WIFI_based_RFID_attendance-system_using_NodeMcu_and_Django',),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              builder(img: 'images/tkinter.png',name: 'Offline Serial based Attendance System', desc: 'Flutter',a: 0.35, b: 0.03, c: 0.02,url: 'https://github.com/shubhamkumar27/Serial_based_RFID_Attendance_System',),
            ],
          ),
        ],
      ),
    );
  }
}

class projectweb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              builder(img: 'images/flutter.jpg',name: 'Covid 19 tracker', desc: 'Flutter',a: 0.25, b: 0.020, c: 0.015,url: 'https://github.com/shubhamkumar27/Covid_19_flutter_app'),
              SizedBox(width: 5,),
              builder(img: 'images/django.jpg',name: 'Visitor Management System', desc: 'Django',a: 0.25, b: 0.020, c: 0.015,url: 'https://github.com/shubhamkumar27/Django-Visitor-Management-System',),
              SizedBox(width: 5,),
              builder(img: 'images/tkinter.png',name: 'Face Recognition Based Attendance System', desc: 'Flutter',a: 0.25, b: 0.020, c: 0.015,url: 'https://github.com/shubhamkumar27/Face_recognition_based_attendance_system',),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              builder(img: 'images/tkinter.png',name: 'Offline Serial based Attendance System', desc: 'Flutter',a: 0.25, b: 0.020, c: 0.015,url: 'https://github.com/shubhamkumar27/Serial_based_RFID_Attendance_System',),
              SizedBox(width: 5,),
              builder(img: 'images/django1.jpg',name: 'Wifi based RFID Attendance System', desc: 'Flutter',a: 0.25, b: 0.020, c: 0.015,url: 'https://github.com/shubhamkumar27/WIFI_based_RFID_attendance-system_using_NodeMcu_and_Django',),
            ],
          ),
        ],
      ),
    );
  }
}
//25, 25, 20, 15
class builder extends StatelessWidget {
  String img;
  String name;
  String desc;
  double a, b, c;
  String url;

  builder({@required this.img, this.name, this.desc, this.a, this.b, this.c, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*a,
      width:MediaQuery.of(context).size.width*a,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              child: Image(image: AssetImage(img), fit: BoxFit.cover,
                ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: name,
                      style: TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.width*b, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 5,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: desc,
                      style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*c, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        height: MediaQuery.of(context).size.width*b,
                        child: Text("Details", style: TextStyle(color: Colors.blue, fontSize: MediaQuery.of(context).size.width*c),),
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

