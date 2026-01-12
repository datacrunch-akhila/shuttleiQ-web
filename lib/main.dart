import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const ShuttleIQApp());
}

class ShuttleIQApp extends StatelessWidget {
  const ShuttleIQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShuttleIQ',
      theme: AppTheme.themeData,
      home: const LoginScreen(),
    );
  }
}
