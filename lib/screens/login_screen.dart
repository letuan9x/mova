import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mova/app/theme.dart';
import 'package:mova/widget/primary_button_widget.dart';

import '../widget/input_textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kColorPrimary,
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                backgroundColor: kColorPrimary,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    // const Spacer(flex: 1),
                    Flexible(
                        flex: 6,
                        child: Image.asset('assets/images/logo.png',
                            fit: BoxFit.fitHeight)),
                    const Flexible(
                      flex: 2,
                      child: Text(
                        'Create Your Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(flex: 2),
                    Flexible(
                      flex: 3,
                      child: InputTexField(
                        onPressed: () {},
                        image: 'assets/images/ic_email.png',
                      ),
                    ),
                    const Spacer(flex: 1),
                    Flexible(
                      flex: 3,
                      child: InputTexField(
                        onPressed: () {},
                        image: 'assets/images/ic_email.png',
                      ),
                    ),
                    const Spacer(flex: 1),
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              side: const BorderSide(
                                color: kColorLinear,
                                width: 2,
                              ),
                              fillColor: isRememberMe
                                  ? MaterialStateProperty.all(kColorLinear)
                                  : MaterialStateProperty.all(
                                      Colors.transparent),
                              value: isRememberMe,
                              onChanged: (value) {
                                setState(() {
                                  isRememberMe = value ?? false;
                                });
                              }),
                          const Text('Remember me',
                              style: TextStyle(
                                  fontFamily: 'Urbanist',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    const Spacer(flex: 1),
                    Flexible(
                      flex: 3,
                      child: PrimaryButton(onPressed: () {}, title: 'Sign up'),
                    ),
                    const Spacer(flex: 2),
                    Flexible(
                      flex: 2,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.pink,
                              height: 1,
                            )),
                            const SizedBox(width: 16),
                            const Text('or continue with',
                                style: TextStyle(
                                    fontFamily: 'Urbanist',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            const SizedBox(width: 16),
                            Expanded(
                                child: Container(
                              color: Colors.pink,
                              height: 1,
                            ))
                          ]),
                    ),
                    const Spacer(flex: 1),
                    Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(flex: 2),
                            Flexible(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kColorDark2,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: kColorDark3, width: 1)),
                                child: Center(
                                  child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                          'assets/images/ic_facebook.png')),
                                ),
                              ),
                            ),
                            const Spacer(flex: 1),
                            Flexible(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kColorDark2,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: kColorDark3, width: 1)),
                                child: Center(
                                  child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                          'assets/images/ic_google.png')),
                                ),
                              ),
                            ),
                            const Spacer(flex: 1),
                            Flexible(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kColorDark2,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: kColorDark3, width: 1)),
                                child: Center(
                                  child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                          'assets/images/ic_apple.png')),
                                ),
                              ),
                            ),
                            const Spacer(flex: 2),
                          ],
                        )),
                    const Spacer(flex: 1),
                    Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Urbanist',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            TextButton(
                                onPressed: () {
                                  print('tap sign in');
                                },
                                child: const Text('Sign in',
                                    style: TextStyle(
                                        color: kColorLinear,
                                        fontFamily: 'Urbanist',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ))
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
