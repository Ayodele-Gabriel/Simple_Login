import 'package:flutter/material.dart';
import 'package:simple_login/app_constants.dart';
import 'package:simple_login/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login/user_login.dart';

class AppAccess extends StatelessWidget {
  const AppAccess({
    Key? key,
    required this.headingText,
    required this.textStyle,
    required this.headingImage,
    required this.onPressed,
    required this.iconType,
    required this.loginType,
  }) : super(key: key);

  final String headingText;
  final TextStyle textStyle;
  final Image headingImage;
  final Function() onPressed;
  final String loginType;
  final IconData iconType;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: 25.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 23.0, right: 22.50),
            child: Column(
              children: [
                Center(
                  child: Text(
                    headingText,
                    style: GoogleFonts.poppins(
                      textStyle: textStyle,
                    ),
                  ),
                ),
                SizedBox(height: 24.0,),
                headingImage,
                SizedBox(height: 64.0,),
                UserLogin(
                  obscureText: false,
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 36.0,
                ),
                UserLogin(obscureText: true, hintText: 'Password'),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forget Password ?',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.poppins(
                      textStyle: kForgetPasswordStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            width: double.infinity,
            height: 48.0,
            margin: kMarginStyle,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.majorColor,
                ),
              ),
              onPressed: () {},
              child: Text('Login'),
            ),
          ),
          SizedBox(
            height: 36.0,
          ),
          Center(
            child: Text(
              'Or',
              style: GoogleFonts.poppins(
                textStyle: kOrStyle,
              ),
            ),
          ),
          SizedBox(
            height: 36.0,
          ),
          Container(
            margin: kMarginStyle,
            height: 39.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              border: Border.all(
                width: 2.0,
                color: AppColors.majorColor,
                style: BorderStyle.solid,
              ),
            ),
            child: TextButton(
              onPressed: onPressed,
              child: Row(
                children: [
                  Icon(iconType, color: Colors.black,),
                  SizedBox(
                    width: 15.48,
                  ),
                  Text(
                    loginType,
                    style: GoogleFonts.poppins(
                      textStyle: kLoginTypeStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
