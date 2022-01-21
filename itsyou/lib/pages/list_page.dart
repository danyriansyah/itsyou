import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Widget platform(String imagePlatform, String decsPlatform, String url) {
    return Column(
      children: [
        Container(
          width: 100,
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: primaryColor),
          ),
          child: TextButton(
            onPressed: () async {
              await launch(url);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imagePlatform),
                SizedBox(
                  height: 14,
                ),
                Text(
                  decsPlatform,
                  style: decsPlatformTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  platform(
                      'assets/logo.png', 'Flutter Dev', 'https://flutter.dev'),
                  platform(
                      'assets/logo.png', 'BWA', 'https://buildwithangga.com'),
                  platform(
                      'assets/logo.png', 'YouTube', 'https://www.youtube.com'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                  platform('assets/logo.png', 'YouTube',
                      'https://www.instagram.com/azimm_.8/'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
