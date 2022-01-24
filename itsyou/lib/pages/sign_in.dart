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
          top: 30,
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
          ],
        ),
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      child: Column(
        children: [
          Text(
            'Buat Username',
            style: primaryTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: primaryColor),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: inputTextStyle,
                      decoration: InputDecoration.collapsed(
                          hintText: 'username', hintStyle: secondaryTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget option(
    int index,
    String text,
    String image,
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedIndex == index ? primaryColor : secondaryColor,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: decsTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget saveButton() {
    return Column(
      children: [
        Container(
          width: 315,
          height: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            border: Border.all(
              color: primaryColor,
            ),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home-page');
            },
            child: Text(
              'Simpan',
              style: buttonTextStyle,
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
              children: [
                header(),
                usernameInput(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pilih Bidang Kesukaan Mu',
                  style: primaryTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    option(0, 'Bertualang ', 'assets/logo.png'),
                    option(1, 'Bermain Game', 'assets/logo.png'),
                    option(2, 'Menggambar', 'assets/logo.png'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    option(4, 'Bertualang ', 'assets/logo.png'),
                    option(5, 'Bermain Game', 'assets/logo.png'),
                    option(6, 'Menggambar', 'assets/logo.png'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                selectedIndex == -1 ? SizedBox() : saveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
