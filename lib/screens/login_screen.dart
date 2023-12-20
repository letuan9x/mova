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
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              Flexible(
                                  flex: 3,
                                  child: Image.asset('assets/images/logo.png')),
                              const Flexible(
                                flex: 1,
                                child: Text(
                                  'Create Your Account',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Urbanist',
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(color: Colors.blue),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(color: Colors.green),
                        )
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
