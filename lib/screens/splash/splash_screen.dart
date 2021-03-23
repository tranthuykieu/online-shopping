import 'package:flutter/material.dart';
import 'package:pororo/screens/splash/components/body.dart';
import 'package:pororo/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    // call it on the staring screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
