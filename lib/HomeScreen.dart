import 'package:app/CreditCardWidget.dart';
import 'package:app/HomeTopWidget.dart';
import 'package:app/PayScreen.dart';
import 'package:app/TransactionHeaderWidget.dart';
import 'package:app/TransactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shake/shake.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';



void main() => runApp(MaterialApp(
      title: 'Home Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}
class HomeScreenState extends State<HomeScreen>
{


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Color(0xffe8f2fc),
                child: SlidingUpPanel(
                  backdropEnabled: true,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0)),
                  panel: Center(
                    child: TransactionsContainer(),
                  ),
                  collapsed: Container(
                    margin:  EdgeInsets.only(left: 40,right:40),
                    child: Center(
                      child: Stack(
                        children: <Widget>[

                          FaIcon(FontAwesomeIcons.creditCard, color: Color(0xff30394B)),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              'My Transactions',
                              style: TextStyle(
                                color: Color(0xff30394B),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  body: bodyContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('start');
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
     print('shake');
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              PayScreen()
      ));
    });

  }


}
Column bodyContainer() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      //I have set Safe area top to false in the bottom_navigation_widget
      // so I need to make a space for it here.
      SizedBox(
        height: 64,
      ),
      HomeTopWidget(),

      CreditCardWidget(),

    ],
  );
}

Column TransactionsContainer() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[

      SizedBox(
        height: 64,
      ),
      TransactionsHeaderWidget(),
      TransactionsWidget(),

      //*******************credit card
    ],
  );
}
