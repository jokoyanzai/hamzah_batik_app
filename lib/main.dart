import 'package:flutter/material.dart';
import 'package:hamzah_batik_app/home_page.dart';
import 'package:hamzah_batik_app/sign_in_page.dart';
import 'package:hamzah_batik_app/sign_up_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: SignInPage(),
      // home: SignUpPage()
    );
  }
}