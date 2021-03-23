import 'package:flutter/material.dart';
import 'package:pororo/routs.dart';
import 'package:pororo/screens/splash/splash_screen.dart';
import 'package:pororo/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      //  use routeName => do not neecd to remember all name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
