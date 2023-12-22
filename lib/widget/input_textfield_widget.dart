import 'package:flutter/material.dart';
import 'package:mova/app/app_colors.dart';

enum TypeInputTextField { email, password }

class InputTexField extends StatelessWidget {
  final String image;
  final VoidCallback? onPressed;

  const InputTexField(
      {super.key, this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.dark2,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(child: Image.asset(image), width: 20),
          ),
        ],
      ),
    );
  }
}
