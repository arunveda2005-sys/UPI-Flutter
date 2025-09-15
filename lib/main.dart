// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'screens/send_money.dart';
import 'screens/offline_payment.dart';

void main() {
  runApp(const UpiApp());
}

class UpiApp extends StatelessWidget {
  const UpiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Offline',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/send': (context) => const SendMoneyScreen(),
        '/offline': (context) => const OfflinePaymentScreen(),
      },
    );
  }
}
