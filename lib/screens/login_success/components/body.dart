import 'package:flutter/material.dart';
import 'package:pororo/components/default_button.dart';
import 'package:pororo/screens/home/home_screen.dart';
import 'package:pororo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(40)),
            Image.asset("assets/images/smile.png"),
            SizedBox(height: getProportionateScreenHeight(100)),
            SizedBox(
              width: SizeConfig.screenWidth * 0.7,
              child: DefaultButton(
                text: "Go shopping now",
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
