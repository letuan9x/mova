import 'package:flutter/material.dart';
import 'package:mova/app/theme.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const PrimaryButton(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: kColorLinear,
            minimumSize: Size(MediaQuery.of(context).size.width, 60),
            elevation: 8,
            shadowColor: kColorLinear),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Urbanist',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal),
        ));
  }
}
