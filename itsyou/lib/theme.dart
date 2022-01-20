import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xffFFFFFF);
Color backgroundColor = Color(0xff1F1D2B);
Color secondaryColor = Color(0xff999999);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

TextStyle primaryTextStyle = GoogleFonts.montserrat(
  color: primaryColor,
  fontSize: 14,
  fontWeight: regular,
);

TextStyle decsTextStyle = GoogleFonts.montserrat(
  color: primaryColor,
  fontSize: 10,
  fontWeight: regular,
);

TextStyle secondaryTextStyle = GoogleFonts.montserrat(
  color: secondaryColor,
  fontSize: 12,
  fontWeight: regular,
);
