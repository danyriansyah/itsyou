import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';

class listPage extends StatelessWidget {
  const listPage({Key? key}) : super(key: key);

  Widget headerHome(String jobTitle) {
    return Row(
      children: [
        Image.asset(
          'assets/logo.png',
          height: 63,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kamu ingin menjadi,',
              style: titleTextStyle,
            ),
            Text(
              jobTitle,
              style: titleBoldStyle,
            )
          ],
        )
      ],
    );
  }

  Widget platformHeader(String jobTitle) {
    return Text(
      'Kamu bisa belajar menjadi ' +
          jobTitle +
          ' melalui platform berikut ini:',
      style: primaryTextStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerHome('Software Developer'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ini aplikasi yang harus kamu miliki:',
                style: primaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              platformHeader('Software Developer'),
            ],
          ),
        ),
      ),
    );
  }
}
