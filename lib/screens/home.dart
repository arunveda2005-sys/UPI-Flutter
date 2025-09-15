import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/custom_button.dart';
import '../widgets/transaction_tile.dart';
import 'send_money.dart';
import 'offline_payment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UPI Offline")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BalanceCard(balance: "₹10,000"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "Send",
                  icon: Icons.send,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SendMoneyScreen()),
                  ),
                ),
                CustomButton(
                  text: "Offline",
                  icon: Icons.wifi_off,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const OfflinePaymentScreen()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Recent Transactions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  TransactionTile(name: "Amazon", amount: "- ₹1,250", isDebit: true),
                  TransactionTile(name: "Paytm Wallet", amount: "+ ₹500", isDebit: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
