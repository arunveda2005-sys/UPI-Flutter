// lib/screens/home.dart
import 'package:flutter/material.dart';
import 'transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UPI Home")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              color: Colors.deepPurple,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: const [
                    Text("Balance", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    SizedBox(height: 8),
                    Text("₹ 25,000", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _homeAction(context, Icons.send, "Send", "/send"),
                _homeAction(context, Icons.bluetooth, "Offline", "/offline"),
              ],
            ),
            const SizedBox(height: 30),
            const Align(alignment: Alignment.centerLeft, child: Text("Recent Transactions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  TransactionTile(name: "Rahul", amount: "-₹500", status: "Sent"),
                  TransactionTile(name: "Priya", amount: "+₹1200", status: "Received"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeAction(BuildContext context, IconData icon, String text, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        children: [
          CircleAvatar(radius: 30, child: Icon(icon, size: 28)),
          const SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }
}
