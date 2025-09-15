import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String amount;
  final bool isDebit;

  const TransactionTile({
    super.key,
    required this.name,
    required this.amount,
    this.isDebit = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isDebit ? Colors.redAccent : Colors.green,
          child: Icon(
            isDebit ? Icons.arrow_upward : Icons.arrow_downward,
            color: Colors.white,
          ),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isDebit ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }
}
