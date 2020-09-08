import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  final Function deleteHandler;

  TransactionCard(this.transaction, this.deleteHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
            radius: 30,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: FittedBox(
                  child: Text('\$${transaction.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22))),
            )),
        title: Text(transaction.title,
            style: Theme.of(context).textTheme.headline6),
        subtitle: Text(DateFormat.yMd().format(transaction.date),
            style: TextStyle(color: Theme.of(context).primaryColor)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () {
            deleteHandler(transaction.id);
          },
        ),
      ),
    );
    /* return Container(
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
                border: Border.all(
                    color: Theme.of(context).primaryColor, width: 2)),
            child: Text('\$${transaction.amount}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(transaction.title,
                  style: Theme.of(context).textTheme.headline6),
              Text(DateFormat.yMd().format(transaction.date),
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ],
          )
        ],
      ),
    ); */
  }
}
