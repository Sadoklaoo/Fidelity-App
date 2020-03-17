import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 42.0, right: 16, left: 16, bottom: 38),
      child: Container(
        height: 220,
        decoration: new BoxDecoration(
          gradient: LinearGradient(begin: Alignment.centerLeft, colors: [
            Color(0xff202426),
            Color(0xff3D484D),
          ]),
          borderRadius: new BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "••••• 3122",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.black26,
                          ),
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      constraints:
                      BoxConstraints(maxHeight: 80.0, maxWidth: 80.0),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Image.network(
                            'https://scontent.ftun3-1.fna.fbcdn.net/v/t1.15752-9/86796078_627926481342878_8912940957570170880_n.png?_nc_cat=109&_nc_sid=b96e70&_nc_ohc=B83I9ImUim0AX9rAzSM&_nc_ht=scontent.ftun3-1.fna&oh=01d97e3cfcf06b37ad24ea357a5852e1&oe=5E92CAA3'),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "26,848.00 Points",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}