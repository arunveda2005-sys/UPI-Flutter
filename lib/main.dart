import 'package:flutter/material.dart';
import 'screens/splash.dart';

void main() {
  runApp(const UPIApp());
}

class UPIApp extends StatelessWidget {
  const UPIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UPI Offline Payment",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
