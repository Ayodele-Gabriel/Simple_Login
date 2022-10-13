import 'package:flutter/material.dart';
import 'package:simple_login/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login/app_constants.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0,
      decoration: BoxDecoration(
        color: AppColors.majorColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Center(
        child: Text(
          'Create Account',
          style: GoogleFonts.poppins(
            textStyle: kCreateAccountStyle,
          ),
        ),
      ),
    );
  }
}