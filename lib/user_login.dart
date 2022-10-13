import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({
    Key? key,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: InputBorder.none,
      ),
    );
  }
}