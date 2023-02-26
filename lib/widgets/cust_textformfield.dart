import 'package:flutter/material.dart';

class CustTextForm extends StatelessWidget {
  const CustTextForm({
    super.key,
    required this.labelText,
    required this.hint,
    required this.iconData,
    this.myController,
  });
  final String labelText;
  final String hint;
  final IconData iconData;
  final TextEditingController? myController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      controller: myController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            labelText,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        suffixIcon: Icon(iconData),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
