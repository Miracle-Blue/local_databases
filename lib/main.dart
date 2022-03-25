import 'package:flutter/material.dart';
import 'package:local_databases/pages/log_in_page.dart';
import 'package:local_databases/pages/sign_in_page_green.dart';
import 'package:local_databases/pages/sign_up_page.dart';
import 'package:local_databases/pages/sign_up_page_green.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInPageGreen(),
      routes: {
        SignUpPage.id:(context)=> const SignUpPage(),
        LogInPage.id:(context)=> const LogInPage(),
        SignInPageGreen.id:(context)=> const SignInPageGreen(),
        SignUpGreen.id:(context)=> const SignUpGreen(),
      },
    );
  }
}

