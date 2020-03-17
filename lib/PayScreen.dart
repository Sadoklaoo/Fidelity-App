import 'package:app/CreditCardWidget.dart';
import 'package:app/HomeTopWidget.dart';
import 'package:app/TransactionHeaderWidget.dart';
import 'package:app/TransactionWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shake/shake.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:app/FlipedCreditCardWidget.dart';

import 'HomeScreen.dart';

void main() => runApp(MaterialApp(
      title: 'Pay Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PayScreen(),
    ));

class PayScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PayScreenState();
}

class PayScreenState extends State<PayScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8f2fc),
      body: SafeArea(
        top: false,
        child: Container(
          color: Color(0xffe8f2fc),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  child: FlippedCreditCardWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  //  width: 420,
                  //  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(height: 40),
                        ButtonTheme(
                          minWidth: 300,
                          height: 40,
                          child: RaisedButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            color: Color(0xff548687),
                            textColor: Colors.white,
                            child: const Text('Activate Discount',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ButtonTheme(
                          minWidth: 300,
                          height: 40,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Color(0xff548687))),
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color(0xff548687),
                            child: const Text('Add Points',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        const SizedBox(height: 46),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
