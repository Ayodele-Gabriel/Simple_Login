import 'package:flutter/material.dart';
import 'package:simple_login/app_access.dart';
import 'package:simple_login/app_constants.dart';
import 'package:simple_login/create_account.dart';
import 'package:simple_login/screens/mobile.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  static const String id = 'email_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppAccess(
            headingText: 'Email Login',
            textStyle: kHeadingStyle2,
            headingImage: Image.asset(
              'images/mail.png',
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Mobile.id,
              );
            },
            iconType: Icons.phone,
            loginType: 'Login with phone number',
          ),
          SizedBox(
            height: 40.0,
          ),
          CreateAccount(),
        ],
      ),
    );
  }
}
