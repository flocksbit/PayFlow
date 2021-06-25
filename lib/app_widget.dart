import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'shared/themes/app_colors.dart';
import 'modules/splash/splash_page.dart';
import 'modules/login/login_page.dart';
import 'modules/home/home_page.dart';
import 'modules/barcode_scanner/barcode_scanner_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/barcode_scanner': (context) => BarcodeScannerPage(),
      },
    );
  }
}
