import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mova/screens/option_login_screen.dart';

import '../app/app_colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Image.asset('assets/images/bg_onboarding.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Text("Welcome to Mova",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Text(
                    'The best movie streaming app of the century to make your days great!',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                  child: ElevatedButton(
                    onPressed: onTapGetStarted,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.linear,
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  void onTapGetStarted() {
    Get.to(const OptionLogin());
  }
}
