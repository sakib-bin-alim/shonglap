import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shonglap/pages/login_page.dart';
import 'package:shonglap/pages/register_page.dart';
import 'package:shonglap/services/auth/auth_gate.dart';
import 'package:shonglap/services/auth/login_or_register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
