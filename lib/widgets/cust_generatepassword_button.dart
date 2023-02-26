import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/constants/app_colors.dart';

class CustGeneratePasswordButton extends StatelessWidget {
  const CustGeneratePasswordButton({
    super.key,
    required this.iconData,
    this.onTap,
  });
  final IconData iconData;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 300,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "12".tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    iconData,
                    color: Colors.white,
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
