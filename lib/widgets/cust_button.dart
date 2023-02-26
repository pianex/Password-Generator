import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustButton extends StatelessWidget {
  const CustButton({
    super.key,
    required this.iconData,
    required this.onTap,
  });
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
      decoration: BoxDecoration(
        color: AppColors.buttonsColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        borderOnForeground: true,
        borderRadius: BorderRadius.circular(15),
        type: MaterialType.transparency,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: onTap,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
