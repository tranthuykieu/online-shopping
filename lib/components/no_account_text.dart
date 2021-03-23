import 'package:flutter/material.dart';
import 'package:pororo/screens/forgot_password/forgot_password_screen.dart';
import 'package:pororo/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have any account?  ",
          style: TextStyle(fontSize: getProportionateScreenWidth(15)),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign up",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: getProportionateScreenWidth(15),
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
