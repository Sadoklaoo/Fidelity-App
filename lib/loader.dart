import 'dart:math';

import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();


}
class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin
{
  AnimationController controller;
  Animation<double> animation_rotation,animation_radius_in,animation_radius_out;
  final double initialRadius = 100;
  double radius = 0.0;
  double circleRadius = 10.0;



  @override
  void initState() {

    super.initState();



    controller = AnimationController(vsync : this, duration: Duration(seconds: 5));
    animation_rotation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent:  controller, curve: Interval(
        0.0,1.0,curve: Curves.linear)));
    animation_radius_in = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent:  controller, curve: Interval(
        0.75,1.0,curve: Curves.elasticIn)));
    animation_radius_out= Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent:  controller, curve: Interval(
        0.0,0.25,curve: Curves.elasticOut)));
    
    controller.addListener((){
     setState(() {
       if (controller.value>= 0.75 && controller.value <=1.0)
       {
         radius = animation_radius_in.value * initialRadius;
       } else if (controller.value>= 0.0 && controller.value <=0.25)
       {
         radius = animation_radius_out.value * initialRadius;
       }
     });
    }
    );
    controller.repeat();



 
  }



  @override
  Widget build(BuildContext context) {
   return Container(
     width: 100.0,
     height: 100.0,
     child: Center(
       child: RotationTransition(
       turns: animation_rotation,
         child: Stack(
           children: <Widget>[
             Image.network('https://scontent.ftun3-1.fna.fbcdn.net/v/t1.15752-9/86796078_627926481342878_8912940957570170880_n.png?_nc_cat=109&_nc_sid=b96e70&_nc_ohc=B83I9ImUim0AX9rAzSM&_nc_ht=scontent.ftun3-1.fna&oh=01d97e3cfcf06b37ad24ea357a5852e1&oe=5E92CAA3'),
             Transform.translate(
               offset: Offset(radius * cos(pi/4),radius * sin(pi/4)),
               child: Dot(
                 radius: circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(2*pi/4),radius * sin(2*pi/4)),
               child: Dot(
                 radius: circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(3*pi/4),radius * sin(3*pi/4)),
               child: Dot(
                 radius: circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(4*pi/4),radius * sin(4*pi/4)),
               child: Dot(
                 radius:  circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(5*pi/4),radius * sin(5*pi/4)),
               child: Dot(
                 radius:  circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(6*pi/4),radius * sin(6*pi/4)),
               child: Dot(
                 radius: circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(7*pi/4),radius * sin(7*pi/4)),
               child: Dot(
                 radius: circleRadius,
                 color: Color(0xffE3EBEE),
               ),
             ),
             Transform.translate(
               offset: Offset(radius * cos(8*pi/4),radius * sin(8*pi/4)),
               child: Dot(
                 radius:  circleRadius,
                 color:  Color(0xffE3EBEE),
               ),
             ),
           ],
         ),

       ),
     ),

   );
  }



}

class Dot extends StatelessWidget{
  final double radius;
  final Color color;

  Dot({this.radius,this.color});
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      width:  this.radius,
      height:  this.radius,
      decoration: BoxDecoration(
        color:  this.color,
        shape: BoxShape.circle,
      ),
    )
    );
  }

}