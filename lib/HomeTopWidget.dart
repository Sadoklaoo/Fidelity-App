import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'assets/LoadImage.dart';

class HomeTopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Total Balance",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Playfair',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                "1,890.80 Points",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Playfair',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF548687)),
              ),
            ],
          ),
          LoadImage(
            "https://drive.google.com/uc?export=view&id=1bcQaCdWNUsXF2he704ZfUrofxw6KV9KH",
            48,
            48,
            0,
            8,
            8,
          ),
        ],
      ),
    );
  }
}
