import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/cust_appbar.dart';
import '../../../widgets/cust_backbutton.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                  CustAppBar(pageName: "16".tr),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "17".tr,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "18".tr,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
