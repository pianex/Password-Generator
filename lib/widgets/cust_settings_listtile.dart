import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustSettingsListTile extends StatelessWidget {
  const CustSettingsListTile(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onTap});
  final String title;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      // padding: const EdgeInsets.all(20),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.elementColor,
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
            child: Center(
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Icon(
                    iconData,
                    color: Colors.white,
                    size: 30,
                  ),
                  const Spacer(flex: 1),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(
                    flex: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
