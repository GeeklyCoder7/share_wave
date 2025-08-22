import 'package:flutter/material.dart';
import 'package:share_wave/core/utils/app_colors.dart';
import 'package:share_wave/core/utils/app_constants.dart';
import 'package:share_wave/splash_screen.dart' hide AppColors;
import 'package:share_wave/temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppColors.lightTheme,
      routes: {'/': (context) => SplashWavesMoving(), '/home': (context) => Temp()},
    );
  }
}
