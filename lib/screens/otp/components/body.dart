import 'package:flutter/material.dart';
import 'package:pororo/constants.dart';
import 'package:pororo/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text("We sent the code to your phone"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              GestureDetector(
                onTap: () {
                  // resend otp code
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
