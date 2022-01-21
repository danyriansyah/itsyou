import 'package:flutter/material.dart';
import 'package:itsyou/theme.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Widget headerHome(String name) {
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
              'Hai,',
              style: titleTextStyle,
            ),
            Text(
              name,
              style: titleTextStyle,
            )
          ],
        )
      ],
    );
  }

  Widget list(String listTitle, String listDecs) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: primaryColor),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/list-page');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listTitle,
                  style: primaryTextStyle,
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: primaryColor),
                  ),
                  child: Text(
                    listDecs,
                    style: primaryTextStyle,
                  ),
                )
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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerHome('Dany'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kamu ingin menjadi apa?',
                style: titleTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              list(
                'Software  Developer',
                'Software developer merupakan salah satu profesi di bidang teknologi informasi.',
              ),
              list(
                'Web Developer',
                'Gaji global yang diterima seorang web developer sebesar 62.500 Dollar per tahun.',
              ),
              list(
                'Data Analyst',
                'Rata – rata gaji yang dimiliki oleh seorang data analyst mencapai 11 juta rupiah per bulan.',
              ),
              list(
                'Backend Developer',
                'Bagi anda yang suka dengan algoritma dan logika, dapat mencoba menjadi Backend Developer.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
