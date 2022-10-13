import 'package:flutter/material.dart';
import 'package:simple_login/app_access.dart';
import 'package:simple_login/app_constants.dart';
import 'package:simple_login/create_account.dart';
import 'package:simple_login/screens/email.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  static const String id = 'mobile_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppAccess(
            headingText: 'Welcome',
            textStyle: kHeadingStyle1,
            headingImage: Image.asset(
              'images/welcome.png',
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Email.id,
              );
            },
            iconType: Icons.mail,
            loginType: 'Login with email',
          ),
          SizedBox(
            height: 40.0,
          ),
          CreateAccount(),
        ],
      ),
    );
    ;
  }
}
