import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pororo/components/no_account_text.dart';
import 'package:pororo/components/social_card.dart';
import 'package:pororo/constants.dart';
import 'package:pororo/main.dart';
import 'package:pororo/screens/forgot_password/forgot_password_screen.dart';
import 'package:pororo/size_config.dart';

import '../sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in using your email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
