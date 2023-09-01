import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0XffF8F8F8);
const Color accentColor = Color(0XffFF7C7E);
const Color whiteColor = Color(0XffFFFFFF);
const Color blackColor = Color(0Xff212121);
const Color greyColor = Color(0xffA4A8AE);

TextStyle blackTextStyle = GoogleFonts.nunito(color: blackColor);
TextStyle whiteTextStyle = GoogleFonts.nunito(color: whiteColor);
TextStyle greyTextStyle = GoogleFonts.nunito(color: greyColor);
TextStyle redTextStyle = GoogleFonts.nunito(color: accentColor);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

final ThemeData themeApp = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  scaffoldBackgroundColor: primaryColor,
);
