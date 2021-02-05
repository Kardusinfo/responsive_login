import 'package:flutter/material.dart';
import 'package:responsive_login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Login',
      home: LoginPage(),
    );
  }
}
