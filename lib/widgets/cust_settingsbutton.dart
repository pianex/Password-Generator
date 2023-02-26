import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cust_button.dart';

class CustSettingsButton extends StatelessWidget {
  const CustSettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustButton(
      iconData: Icons.settings,
      onTap: () {
        Get.toNamed('/SettingsPage');
      },
    );
  }
}
