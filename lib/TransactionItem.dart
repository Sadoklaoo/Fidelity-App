import 'package:app/utils/Utils.dart';
import 'package:flutter/material.dart';

import 'assets/LoadImage.dart';
import 'models/Transaction.dart';


class TransactionItem extends StatelessWidget {
  Transaction transaction = new Transaction();

  TransactionItem({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        title: Text(
          Utils.capitalizeSentence(transaction.name),
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        leading: LoadImage(
          transaction.image,
          60,
          60,
          12,
          8,
          0,
        ),
        subtitle: new RichText(
          text: TextSpan(
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: Utils.convertDateFromString(transaction.date, "MMM dd"),
              ),
              TextSpan(
                  text: ', at ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black54)),
              TextSpan(
                text: Utils.convertDateFromString(transaction.date, "hh:mm a"),
              ),
            ],
          ),
        ),
        trailing: Text(
          "\$" + transaction.amount.toString(),
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
    );
  }
}