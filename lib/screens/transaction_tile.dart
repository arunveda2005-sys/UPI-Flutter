// lib/screens/transaction_tile.dart
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String amount;
  final String status;

  const TransactionTile({
    super.key,
    required this.name,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(child: Text(name[0])),
        title: Text(name),
        subtitle: Text(status),
        trailing: Text(amount, style: TextStyle(color: amount.startsWith('-') ? Colors.red : Colors.green, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
