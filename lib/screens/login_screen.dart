import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mova/app/app_colors.dart';

import '../widget/input_textfield_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.primary,
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                backgroundColor: AppColor.primary,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png', width: 120, height: 120),
                    const SizedBox(height: 24),
                    const Text('Create Your Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 24),
                    Column(children: [
                      const InputTexField(typeInputTextField: TypeInputTextField.email),
                      const SizedBox(height: 20),
                      InputTexField(
                          typeInputTextField: TypeInputTextField.password,
                          onPressed: () {})
                    ]),
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
