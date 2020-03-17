import 'package:flutter/material.dart';

class TransactionsHeaderWidget extends StatefulWidget {
  @override
  _TransactionsHeaderWidgetState createState() =>
      _TransactionsHeaderWidgetState();
}

class _TransactionsHeaderWidgetState extends State<TransactionsHeaderWidget> {
  String dropdownValue = 'Recent';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "My Transactions",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Sort by",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xffe8f2fc),
                      borderRadius: new BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        elevation: 0,
                        underline: Container(
                          color: Color(0xffe8f2fc),
                        ),
                        style: TextStyle(color: Colors.deepPurple),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Oldest', 'Recent', 'Highest', 'Lowest']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Color(0xff153564),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
