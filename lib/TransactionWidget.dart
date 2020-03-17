
import 'package:flutter/material.dart';

import 'TransactionItem.dart';
import 'models/Transaction.dart';


class TransactionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: ListView.builder(
              padding: EdgeInsets.only(right: 6, left: 6),
              scrollDirection: Axis.vertical,
              itemCount: Transaction.getTransactions().length,
              itemBuilder: (BuildContext context, int index) {
                return TransactionItem(
                    transaction: Transaction.getTransactions()[index]);
              }),
        ),
      ),
    );
  }
}