import 'dart:async';

import 'package:flutter/material.dart';
import 'loader.dart';
import 'loginScreen.dart';
void main() => runApp(MaterialApp(
  home: SplachScreen(),
  routes: <String,WidgetBuilder>{
    '/login' : (BuildContext context) => LoginScreen(),
  },
));

class SplachScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return StartState();
  }

}

class StartState extends State<SplachScreen> {
  @override
  void initState()
  {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xff548687),
                  Color(0xff2EC4B6),
                ]
            )
        ),
        child: Center(
          child: Loader(),
        ),
      ),
    );
  }

   startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration,route);
   }
   route()
   {
     Navigator.pushNamed(context, '/login');
   }
}




