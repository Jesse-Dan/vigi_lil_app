import 'package:flutter/material.dart';
import 'package:vigi_lil_app/build/pages/auth/login.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: LoginPage());
  }
}
