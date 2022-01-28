import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:masonry_grid/masonry_grid.dart';

class listPage extends StatefulWidget {
  @override
  State<listPage> createState() => _listPageState();
}

class _listPageState extends State<listPage> {
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
              // 'Kamu sedang membuka,',
              'You are opening,',
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

  List images = [
    'assets/logo.png',
    'assets/logo.png',
    'assets/logo.png',
    'assets/logo.png',
  ];

  int currentIndex = 0;

  Widget carouselQuotes() {
    int index = -1;

    return Column(
      children: [
        CarouselSlider(
          items: images
              .map(
                (Quote) => Image.asset(
                  Quote,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 150,
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
          children: images.map((e) {
            index++;
            return indicator(index);
          }).toList(),
        )
      ],
    );
  }

  Widget aplikasi(String appName) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/app-page');
      },
      child: Image.asset(
        appName,
        height: 54,
      ),
    );
  }

  Widget aplikasiSlider() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // 'Teknologi yang digunakan:',
            'Tech that i used:',
            style: primaryTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                  aplikasi('assets/logo.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget platformHeader(String jobTitle) {
    return Text(
      // 'Lihat bagaimana saya membuat ' + jobTitle + ' di bawah ini:',
      // 'Jelajahi ' + jobTitle,
      'Explore ' + jobTitle,
      style: primaryTextStyle,
    );
  }

  Widget platform(String imagePlatform, String decsPlatform, String url) {
    return Container(
      width: 100,
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
              carouselQuotes(),
              SizedBox(
                height: 20,
              ),
              aplikasiSlider(),
              SizedBox(
                height: 20,
              ),
              platformHeader('Software Developer'),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: MasonryGrid(
                  column: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  children: [
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                    platform(
                        'assets/logo.png', 'UX Desain', 'https://flutter.dev'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
