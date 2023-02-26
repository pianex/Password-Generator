import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/core/localization/changelocal.dart';
import 'package:pianex_02_password_generator/core/services/services.dart';
import 'package:pianex_02_password_generator/widgets/cust_appbar.dart';
import 'package:pianex_02_password_generator/widgets/cust_backbutton.dart';

class LanguagePage extends GetView<LocalController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    bool? value = false;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  const CustBackButton(),
                  CustAppBar(pageName: "15".tr),
                ],
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: sharedPrefLang == "ar" ? true : false,
                onChanged: (val) {
                  controller.changeLang("ar");
                  value != value;
                },
                controlAffinity: ListTileControlAffinity.leading,
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Text(
                  "19".tr,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              CheckboxListTile(
                value: sharedPrefLang == "en" ? true : false,
                onChanged: (val) {
                  controller.changeLang("en");
                  value != value;
                },
                controlAffinity: ListTileControlAffinity.leading,
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Text(
                  "20".tr,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
