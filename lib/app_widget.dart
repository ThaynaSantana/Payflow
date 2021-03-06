import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/models/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/splash/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/barcode_scanner': (context) => const BarcodeScannerPage()
      }
    );
  }
}