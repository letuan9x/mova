import 'package:flutter/material.dart';

enum TypeInputTextField { email, password }

class InputTexField extends StatelessWidget {
  final String image;
  final VoidCallback? onPressed;

  const InputTexField(
      {super.key, this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
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
