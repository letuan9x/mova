import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:mova/app/theme.dart';
import 'package:get/get.dart';
import 'package:mova/screens/onboarding_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(const Onboarding());
    });
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: kColorPrimary,
        body: SafeArea(
            child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 160,
                height: 160,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const SpinKitFadingCircle(
                  color: kColorLinear,
                  size: 60,
                ),
              ),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
