import 'package:flutter/material.dart';
import 'package:flutter_expense/models/transaction.dart';
import 'package:flutter_expense/widgets/new_transaction.dart';
import 'package:flutter_expense/widgets/transaction_list.dart';


class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 55.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 100.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionsList(_transactions),
      ],
    );
  }
}
