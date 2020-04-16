import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shubham/widgets/ResponsiveLayout.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text("< Projects >", style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30, fontWeight: FontWeight.bold,))),
          buildermob(img: 'assets/flutter1.png',name: 'Covid 19 tracker', desc: 'Flutter',url: 'https://github.com/shubhamkumar27/Covid_19_flutter_app',),
          buildermob(img: 'assets/django.png',name: 'Visitor Management System', desc: 'Django',url: 'https://github.com/shubhamkumar27/Django-Visitor-Management-System',),
          buildermob(img: 'assets/django33.png',name: 'Wifi based RFID Attendance System', desc: 'Django + Embedded Systems',url: 'https://github.com/shubhamkumar27/WIFI_based_RFID_attendance-system_using_NodeMcu_and_Django',),
          buildermob(img: 'assets/tkinter22.jpg',name: 'Face Recognition Based Attendance System', desc: 'Tkinter',url: 'https://github.com/shubhamkumar27/Face_recognition_based_attendance_system',),
          InkWell(
              child: RichText(text : TextSpan(text: "For More Details Click Here", style: TextStyle(color: Colors.blue, fontSize:15),),),
              onTap: () => launch('https://github.com/shubhamkumar27')),
        ],
      ),
    );
  }
}

class projectweb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20,),
            Text("< Projects >", style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 35, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                builder(img: 'assets/flutter.jpg',name: 'Covid 19 tracker', desc: 'Flutter',a: 0.20, b: 0.015, c: 0.015,url: 'https://github.com/shubhamkumar27/Covid_19_flutter_app'),
                SizedBox(width: 5,),
                builder(img: 'assets/django.jpg',name: 'Visitor Management System', desc: 'Django',a: 0.20, b: 0.015, c: 0.015,url: 'https://github.com/shubhamkumar27/Django-Visitor-Management-System',),
                SizedBox(width: 5,),
                builder(img: 'assets/django1.jpg',name: 'Wifi based RFID Attendance System', desc: 'Django + Embedded Systems',a: 0.20, b: 0.015, c: 0.015,url: 'https://github.com/shubhamkumar27/WIFI_based_RFID_attendance-system_using_NodeMcu_and_Django',),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                builder(img: 'assets/tkinter.png',name: 'Offline Serial based Attendance System', desc: 'Tkinter + Embedded Systems',a: 0.20, b: 0.015, c: 0.015,url: 'https://github.com/shubhamkumar27/Serial_based_RFID_Attendance_System',),
                SizedBox(width: 5,),
                builder(img: 'assets/tkinter2.jpg',name: 'Face Recognition Based Attendance System', desc: 'Python (OpenCV)',a: 0.20, b: 0.015, c: 0.015,url: 'https://github.com/shubhamkumar27/Face_recognition_based_attendance_system',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



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
      height: MediaQuery.of(context).size.width*a*0.9,
      width:MediaQuery.of(context).size.width*a,
      decoration: BoxDecoration(
        color: Colors.black,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: name,
                      style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*b, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 5,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( text: desc,
                      style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*c,),),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                        child: RichText(text : TextSpan(text: "Details", style: TextStyle(color: Colors.blue, fontSize: MediaQuery.of(context).size.width*c*0.7),),),
                        onTap: () => launch(url)),
                  ),
                  ]),
              ),
            ),
        ],
      ),
    );
  }
}


class buildermob extends StatelessWidget {
  String img;
  String name;
  String desc;
  String url;

  buildermob({@required this.img, this.name, this.desc, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.18,
      width:MediaQuery.of(context).size.width*0.70,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.grey,),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              child: Image(image: AssetImage(img), fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            ),
          ),
          Container(
            child: Flexible(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan( text: name,
                        style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.035, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan( text: desc,
                        style: TextStyle(color: Colors.grey,fontSize: MediaQuery.of(context).size.width*0.025,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                          child: RichText(text : TextSpan(text: "Details", style: TextStyle(color: Colors.blue, fontSize: MediaQuery.of(context).size.width*0.022),),),
                          onTap: () => launch(url)),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

