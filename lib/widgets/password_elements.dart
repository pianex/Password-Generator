import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/controller/password_controller.dart';
import 'package:pianex_02_password_generator/core/services/services.dart';

class PasswordElements extends StatelessWidget {
  const PasswordElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Text(
            '6'.tr,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        sharedPrefLang == "ar"
            ? GetBuilder<PasswordController>(
                init: PasswordController(),
                builder: (controller) => DropdownButton(
                  items: controller.passwordElementsListArabic
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  hint: Text("7".tr),
                  value: controller.selectedElementArabic,
                  onChanged: (val) {
                    var list = controller.chosenElementsList(sharedPrefLang);
                    controller.changeElement(val as String, list, "ar");
                  },
                ),
              )
            : GetBuilder<PasswordController>(
                init: PasswordController(),
                builder: (controller) => DropdownButton(
                  items: controller.passwordElementsListEnglish
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  hint: Text("7".tr),
                  value: controller.selectedElementEnglish,
                  onChanged: (val) {
                    var list = controller.chosenElementsList(sharedPrefLang);
                    controller.changeElement(val as String, list, "en");
                  },
                ),
              ),
      ],
    );
  }
}
