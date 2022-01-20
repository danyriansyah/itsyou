import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int selectedIndex = -1;

  Widget header() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Buat Username',
              style: primaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pilih Bidang Kesukaan Mu',
              style: primaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget option(
    int index,
    String text,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 90,
        height: 90,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedIndex == index ? primaryColor : secondaryColor,
          ),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: decsTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            header(),
            Row(
              children: [
                option(0, 'Bertualang '),
                option(1, 'Bermain Game'),
                option(2, 'Menggambar'),
                option(3, 'Bernyanyi'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
