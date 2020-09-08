import 'package:flutter/material.dart';
import '../models/transaction.dart';

import './transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteHandler;

  TransactionList(this.transactions, this.deleteHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text('No transactions added yet!',
                      style: Theme.of(context).textTheme.headline6),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return TransactionCard(transactions[index], deleteHandler);
                },
                itemCount: transactions.length,
              ));
  }
}
