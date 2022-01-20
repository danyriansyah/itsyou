import 'package:flutter/material.dart';
import 'package:itsyou/pages/sign_in.dart';
import 'package:itsyou/pages/splash_page.dart';

void main() {
  runApp(const ItsYou());
}

class ItsYou extends StatelessWidget {
  const ItsYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn(),
      },
    );
  }
}