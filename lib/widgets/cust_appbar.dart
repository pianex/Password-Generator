import 'package:flutter/material.dart';

import 'cust_title.dart';

class CustAppBar extends StatelessWidget {
  const CustAppBar({
    super.key,
    required this.pageName,
  });
  final String pageName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: 60,
        width: size.width / 1.01,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 15),
            CustTitle(title: pageName),
          ],
        ),
      ),
    );
  }
}
