import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            child: Text('\$${transaction.amount}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(transaction.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(DateFormat.yMd().format(transaction.date),
                  style: TextStyle(color: Colors.blueGrey)),
            ],
          )
        ],
      ),
    );
  }
}
