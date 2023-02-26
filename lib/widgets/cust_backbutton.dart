import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/core/services/services.dart';

import 'cust_button.dart';

class CustBackButton extends StatelessWidget {
  const CustBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    return sharedPrefLang == "ar"
        ? Transform.rotate(
            angle: pi,
            child: CustButton(
              iconData: Icons.arrow_back_ios_new,
              onTap: () {
                Get.back();
              },
            ))
        : CustButton(
            iconData: Icons.arrow_back_ios_new,
            onTap: () {
              Get.back();
            },
          );
  }
}
