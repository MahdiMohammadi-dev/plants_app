import 'package:flutter/material.dart';
import 'package:plants/utils/app_color.dart';
import 'package:plants/gen/fonts.gen.dart';
import 'package:plants/screen/onboarding.dart';

//? LinkedIn:mahdi mohammmadi molahajiloo
//! Github==>Mahdi Mohammadi-dev
//* Instagram==>mahdiii.dev

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: kbackgroundColor,
            colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
            fontFamily: FontFamily.poppins,
            useMaterial3: true),
        home: const OnboardingPage());
  }
}
