import 'package:flutter/material.dart';
import 'package:mova/app/app_colors.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;
  final String title;

  const ContinueButton(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.dark2,
            minimumSize: const Size(0, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 24, height: 24),
            const SizedBox(width: 12, height: 0),
            Text(title, style: const TextStyle(color: Colors.white))
          ],
        ));
  }
}
