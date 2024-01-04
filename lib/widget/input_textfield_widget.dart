import 'package:flutter/material.dart';
import 'package:mova/app/theme.dart';

enum TypeInputTextField { email, password }

class InputTexField extends StatelessWidget {
  final String image;
  final VoidCallback? onPressed;

  const InputTexField({super.key, this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image.asset(image, height: 20, width: 20),
          const SizedBox(
            width: 200,
            height: 200,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
          )
        ],
      ),
    );
  }
}
