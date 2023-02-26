import 'package:flutter/material.dart';

class CustDrawerListTile extends StatelessWidget {
  const CustDrawerListTile({
    super.key,
    required this.title,
    required this.iconData,
    required this.onTap,
  });
  final String title;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(iconData),
        title: Text(
          title,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
