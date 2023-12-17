import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mova/app/app_colors.dart';

import '../widget/continue_button_widget.dart';
import '../widget/primary_button_widget.dart';
import 'login_screen.dart';

class OptionLogin extends StatelessWidget {
  const OptionLogin({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.primary,
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                backgroundColor: AppColor.primary,
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    Center(
                        child: Image.asset('assets/images/login.png',
                            width: 237, height: 200)),
                    const Text('Let’s you in',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        )),
                    const SizedBox(height: 24),
                    ContinueButton(
                        onPressed: () {},
                        image: 'assets/images/ic_facebook.png',
                        title: 'Continue with Facebook'),
                    const SizedBox(height: 16),
                    ContinueButton(
                        onPressed: () {},
                        image: 'assets/images/ic_google.png',
                        title: 'Continue with Google'),
                    const SizedBox(height: 16),
                    ContinueButton(
                        onPressed: () {},
                        image: 'assets/images/ic_apple.png',
                        title: 'Continue with Apple'),
                    const SizedBox(height: 34),
                    Row(children: [
                      Expanded(
                        child: Container(
                          color: AppColor.dark3,
                          height: 1,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('or',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          color: AppColor.dark3,
                          height: 1,
                        ),
                      )
                    ]),
                    const SizedBox(height: 24),
                    PrimaryButton(
                        onPressed: () {
                          Get.to(const Login());
                        }, title: 'Sign in with password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don’t have an account?',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal)),
                        const SizedBox(width: 8),
                        TextButton(
                            onPressed: (){},
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  color: AppColor.linear,
                                  fontFamily: 'Urbanist',
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
