import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Skills extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage('assets/programmer.png')
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('< Skills >', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.lightGreenAccent),),
          SizedBox(height: 30,),
          Image(
              image: AssetImage('assets/sde.png'),
              width:  MediaQuery.of(context).size.width*0.7,
            ),
          SizedBox(height: MediaQuery.of(context).size.height*0.07,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () => {launch('https://codechef.com/users/shubhamkumar27')},
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width*0.08,
                      backgroundColor: Colors.white,
                      child: Image(image:AssetImage('assets/codechef.png'),width: MediaQuery.of(context).size.width*0.11,),
                    ),
                    SizedBox(height: 5,),
                    Text('Codechef' , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {launch('https://hackerrank.com/shubhamkumar27')},
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width*0.08,
                      backgroundColor: Colors.white,
                      child: Image(image:AssetImage('assets/hackerrank.png'),width: MediaQuery.of(context).size.width*0.11,),
                    ),
                    SizedBox(height: 5,),
                    Text('HackerRank', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
//              SizedBox(width: 5,),
              GestureDetector(
                onTap: () => {launch('https://leetcode.com/shubhamkumar27')},
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width*0.08,
                      backgroundColor: Colors.white,
                      child: Image(image:AssetImage('assets/leetcode.png'),width: MediaQuery.of(context).size.width*0.11,),
                    ),
                    SizedBox(height: 5,),
                    Text('Leetcode', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(width: 5,),
            ],
          ),
//          SizedBox(height: 60,),
        ],
      ),
    );
  }
}
