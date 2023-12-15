import 'package:flutter/material.dart';
import 'package:mova/assets/colors/app_colors.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.primary,
        body: SafeArea(
          child: Text('fuck', style: TextStyle(
            color: Colors.red,
          )),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}