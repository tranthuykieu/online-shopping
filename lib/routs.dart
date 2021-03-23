import 'package:flutter/material.dart';
import 'package:pororo/screens/splash/splash_screen.dart';

// use name route
// all routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};
