import 'package:flutter/material.dart';
import 'package:totp/totp.dart';

import 'screens/home_page.dart';

void main() {
  final totp = Totp(secret: '12345678901234567890'.codeUnits);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dTOTPx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
