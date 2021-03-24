import 'package:flutter/material.dart';
import 'package:pororo/components/custom_suffix_icon.dart';
import 'package:pororo/components/default_button.dart';
import 'package:pororo/components/form_error.dart';
import 'package:pororo/components/social_card.dart';
import 'package:pororo/constants.dart';
import 'package:pororo/screens/complete_profile/complete_profile_screen.dart';

import '../../../size_config.dart';
import '../complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details \n or continue with social media",
                textAlign: TextAlign.center,
              ),
              CompleteProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
