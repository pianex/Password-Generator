import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pianex_02_password_generator/widgets/cust_generatepassword_button.dart';
import 'package:pianex_02_password_generator/widgets/cust_textformfield.dart';
import '../controller/password_controller.dart';
import '../widgets/cust_appbar.dart';
import '../widgets/cust_drawer.dart';
import '../widgets/cust_settingsbutton.dart';
import '../widgets/password_elements.dart';
import '../widgets/security_level_box.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController keywordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustDrawer(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView(
            children: [
              Row(
                children: [
                  const CustSettingsButton(),
                  CustAppBar(
                    pageName: "1".tr,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      '2'.tr,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GetBuilder<PasswordController>(
                    init: PasswordController(),
                    builder: (controller) => Column(
                      children: [
                        SecurityLevelBox(
                          title: '3'.tr,
                          value: controller.medium,
                          onChanged: (p0) {
                            controller.chooseMedium();
                          },
                        ),
                        SecurityLevelBox(
                          title: '4'.tr,
                          value: controller.high,
                          onChanged: (p0) {
                            controller.chooseHigh();
                          },
                        ),
                        SecurityLevelBox(
                          title: '5'.tr,
                          value: controller.ultra,
                          onChanged: (p0) {
                            controller.chooseUltra();
                          },
                        ),
                      ],
                    ),
                  ),
                  const PasswordElements(),
                  const SizedBox(height: 20),
                  GetBuilder<PasswordController>(
                    init: PasswordController(),
                    builder: (controller) => Column(
                      children: [
                        CustGeneratePasswordButton(
                          iconData: Icons.password,
                          onTap: () {
                            if (controller.medium == true) {
                              controller.mediumGenerate();
                            } else if (controller.high == true) {
                              controller.highGenerate();
                            } else if (controller.ultra == true) {
                              controller.ultraGenerate();
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        CustTextForm(
                          labelText: '13'.tr,
                          hint: '',
                          myController: controller.passwordController,
                          iconData: Icons.key,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
