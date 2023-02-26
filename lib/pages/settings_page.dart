import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/widgets/cust_backbutton.dart';
import 'package:pianex_02_password_generator/widgets/cust_settings_listtile.dart';

import '../widgets/cust_appbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  const CustBackButton(),
                  CustAppBar(
                    pageName: '14'.tr,
                  ),
                ],
              ),
              CustSettingsListTile(
                title: "15".tr,
                iconData: Icons.language,
                onTap: () {
                  Get.toNamed("/LanguagePage");
                },
              ),
              CustSettingsListTile(
                title: "16".tr,
                iconData: Icons.info,
                onTap: () {
                  Get.toNamed("/AboutPage");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
