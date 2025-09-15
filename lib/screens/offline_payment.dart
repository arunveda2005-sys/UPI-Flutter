// lib/screens/offline_payment.dart
import 'package:flutter/material.dart';

class OfflinePaymentScreen extends StatelessWidget {
  const OfflinePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController();

    final List<String> devices = [
      "Rahul’s Phone",
      "Priya’s Device",
      "Merchant POS",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Offline Payment")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Select Bluetooth Device", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: devices.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.bluetooth),
                      title: Text(devices[index]),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (_) => Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Pay to ${devices[index]}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 16),
                                TextField(
                                  controller: amountController,
                                  decoration: const InputDecoration(labelText: "Enter Amount"),
                                  keyboardType: TextInputType.number,
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("₹${amountController.text} sent via Bluetooth!")),
                                    );
                                  },
                                  child: const Text("Confirm Payment"),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
