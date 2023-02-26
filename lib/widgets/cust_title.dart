import 'package:flutter/material.dart';

class CustTitle extends StatelessWidget {
  const CustTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
    );
  }
}
