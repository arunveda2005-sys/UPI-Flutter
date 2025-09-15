import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';

class OfflinePaymentScreen extends StatelessWidget {
  const OfflinePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final amountController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Offline Payment")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Send Money Without Internet",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            InputField(
              label: "Enter Phone Number",
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 12),
            InputField(
              label: "Enter Amount",
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Proceed",
              icon: Icons.offline_bolt,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Offline Payment Queued ✅")),
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
