import 'package:flutter/material.dart';

enum TypeInputTextField { email, password }

class InputTexField extends StatelessWidget {
  final TypeInputTextField typeInputTextField;
  final VoidCallback? onPressed;

  const InputTexField(
      {super.key, required this.typeInputTextField, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(child: getLeftImage(), width: 20, height: 20),
          ),
        ],
      ),
    );
  }

  Widget getLeftImage() {
    switch (typeInputTextField) {
      case TypeInputTextField.email:
        return Image.asset('assets/images/ic_email.png');
      case TypeInputTextField.password:
        return Image.asset('assets/images/ic_password.png');
    }
  }

  Widget getRightImage() {
    switch (typeInputTextField) {
      case TypeInputTextField.email:
        return const SizedBox(width: 0, height: 0);
      case TypeInputTextField.password:
        return Image.asset('assets/images/ic_show_hide.png');
    }
  }

  TextButton? getRightButton() {
    switch (typeInputTextField) {
      case TypeInputTextField.password:
        return TextButton(onPressed: onPressed, child: getRightImage());
      default:
        return null;
    }
  }
}
