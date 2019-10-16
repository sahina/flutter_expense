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

  void _addNewTransaction(String txTitle, double txAmount) {
    final _now = DateTime.now();
    final newTx = Transaction(
      amount: txAmount,
      title: txTitle,
      date: _now,
      id: _now.toString()
    );

    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionsList(_transactions),
      ],
    );
  }
}
