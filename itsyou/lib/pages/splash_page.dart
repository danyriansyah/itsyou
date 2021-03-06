import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_QUbOiL.json',
          ),
        ],
      )),
    );
  }
}
