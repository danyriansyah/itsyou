import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class appPage extends StatefulWidget {
  @override
  State<appPage> createState() => _listPageState();
}

class _listPageState extends State<appPage> {
  // const listPage({Key? key}) : super(key: key);

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
              'Kamu memilih aplikasi,',
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

  Widget indicator(int index) {
    return Container(
      width: currentIndex == index ? 16 : 4,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor,
      ),
    );
  }

  List quotes = [
    'Real programmers can write assembly code in any language.',
    'Real programmers can write assembly code in any language.',
    'Real programmers can write assembly code in any language.',
    'Real programmers can write assembly code in any language.',
  ];

  int currentIndex = 0;

  Widget carouselQuotes() {
    int index = -1;

    return Column(
      children: [
        CarouselSlider(
          items: quotes
              .map(
                (Quote) => Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Quote,
                        style: primaryTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'By: ',
                        style: primaryTextStyle,
                      )
                    ],
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 84,
            viewportFraction: 1,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quotes.map((e) {
            index++;
            return indicator(index);
          }).toList(),
        )
      ],
    );
  }

  Widget platformHeader(String appName, String jobTitle) {
    return Text(
      'Kamu bisa mempelajari ' +
          appName +
          ' untuk menjadi ' +
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                headerHome('Visual Studio Code'),
                SizedBox(
                  height: 20,
                ),
                carouselQuotes(),
                SizedBox(
                  height: 20,
                ),
                platformHeader('Visual Studio Code', 'Software Developer'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    platform('assets/logo.png', 'Flutter Dev',
                        'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'BWA', 'https://buildwithangga.com'),
                    platform('assets/logo.png', 'YouTube',
                        'https://www.youtube.com'),
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
      ),
    );
  }
}
