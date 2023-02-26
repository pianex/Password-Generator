import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cust_drawer_listtile.dart';

class CustDrawer extends StatelessWidget {
  const CustDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustDrawerListTile(
              title: "14".tr,
              iconData: Icons.settings,
              onTap: () {
                Get.toNamed("/SettingsPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
