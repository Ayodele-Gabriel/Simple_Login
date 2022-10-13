import 'package:flutter/material.dart';
import 'package:simple_login/screens/email.dart';
import 'package:simple_login/screens/mobile.dart';

void main() => runApp(const SimpleApp());


class SimpleApp extends StatelessWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Mobile.id,
      routes: {
        Mobile.id: (context) =>  Mobile(),
        Email.id: (context) => Email(),
      },
    );
  }
}

