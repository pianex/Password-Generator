import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/lists.dart';
import '../core/functions/functions.dart';

class PasswordController extends GetxController {
  bool medium = true;
  bool high = false;
  bool ultra = false;
  chooseMedium() {
    medium = true;
    high = false;
    ultra = false;
    update();
  }

  chooseHigh() {
    medium = false;
    high = true;
    ultra = false;
    update();
  }

  chooseUltra() {
    medium = false;
    high = false;
    ultra = true;
    update();
  }

  List passwordElementsListArabic = [
    "حروف فقط",
    "مع الأرقام",
    "مع الرموز",
    "مع كليهما",
  ];

  List passwordElementsListEnglish = [
    "Letters only",
    "With numbers",
    "With symbols",
    "With both",
  ];
  String? selectedElementArabic = "حروف فقط";
  String? selectedElementEnglish = "Letters only";

  chosenElementsList(String? langCode) {
    if (langCode == "ar") {
      return passwordElementsListArabic;
    } else if (langCode == "en") {
      return passwordElementsListEnglish;
    }
  }

  changeElement(String? val, List elementsList, String? langCode) {
    int index = elementsList.indexOf(val);
    if (langCode == "ar") {
      selectedElementArabic = elementsList[index];
    } else if (langCode == "en") {
      selectedElementEnglish = elementsList[index];
    }

    update();
  }

  var passwordController = TextEditingController();
  String password = '';

  var time = DateTime.now();
  // Medium Generate -------------------------------------------------------------------------------------------------------------
  mediumGenerate() {
    if (time.millisecond % 3 == 0) {
    } else if (time.millisecond % 3 == 1) {
    } else if (time.millisecond % 3 == 2) {}
    var first = (DateTime.now().microsecond + 1) * 18 % 16;
    var second = (DateTime.now().microsecond + 1) * 20 % 16;

    if (selectedElementArabic == "8".tr || selectedElementEnglish == "8".tr) {
      password = '${words[first]}${words[second]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "9".tr ||
        selectedElementEnglish == "9".tr) {
      int index = DateTime.now().microsecond * 177 % 90;
      var firstL = (DateTime.now().microsecond + 1) * 5 % 26;
      var secondL = (DateTime.now().microsecond + 1) * 6 % 26;
      password =
          '${words[first]}${twoDigits(index)}${letters[firstL]}${letters[secondL]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "10".tr ||
        selectedElementEnglish == "10".tr) {
      var firstL = (DateTime.now().microsecond + 1) * 2 % 26;
      var secondL = (DateTime.now().microsecond + 1) * 3 % 26;
      var thirdL = (DateTime.now().microsecond + 1) * 5 % 26;
      var symbol = DateTime.now().microsecond * 177 % 10;
      password =
          '${words[first]}${letters[firstL]}${letters[secondL]}${letters[thirdL]}${symbols[symbol]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "11".tr ||
        selectedElementEnglish == "11".tr) {
      var number = threeDigits(DateTime.now().microsecond);
      var symbol = DateTime.now().microsecond * 177 % 10;
      password = '${words[first]}$number${symbols[symbol]}';
      passwordController.text = password;
    }

    // print(password);
    update();
  }

  // High Generate ------------------------------------------------------------------------------------------------------------
  highGenerate() {
    var firstW = (DateTime.now().microsecond + 1) * 3 % 16;
    var secondW = (DateTime.now().microsecond + 1) * 4 % 16;

    if (selectedElementArabic == "8".tr || selectedElementEnglish == "8".tr) {
      var firstL = (DateTime.now().microsecond + 1) * 5 % 26;
      var secondL = (DateTime.now().microsecond + 1) * 6 % 26;

      password =
          '${words[firstW]}${words[secondW]}${letters[firstL]}${letters[secondL]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "9".tr ||
        selectedElementEnglish == "9".tr) {
      var number = twoDigits(DateTime.now().microsecond);
      password = '${words[firstW]}${words[secondW]}$number';
      passwordController.text = password;
    } else if (selectedElementArabic == "10".tr ||
        selectedElementEnglish == "10".tr) {
      var symbol1 = DateTime.now().microsecond % 10;
      var symbol2 = (DateTime.now().microsecond + 3) % 10;
      password =
          '${words[firstW]}${words[secondW]}${symbols[symbol1]}${symbols[symbol2]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "11".tr ||
        selectedElementEnglish == "11".tr) {
      var number = DateTime.now().microsecond % 10;
      var symbol = DateTime.now().microsecond % 10;
      password = '${words[firstW]}${words[secondW]}$number${symbols[symbol]}';
      passwordController.text = password;
    }
    // print(password);
    update();
  }

// Ultra Generate --------------------------------------------------------------------------------------------------------------
  ultraGenerate() {
    var firstW = (DateTime.now().microsecond + 1) * 70 % 16;
    var secondW = (DateTime.now().microsecond + 1) * 30 % 16;

    if (selectedElementArabic == "8".tr || selectedElementEnglish == "8".tr) {
      var third = (DateTime.now().microsecond + 1) * 537 % 16;
      password = '${words[firstW]}${words[secondW]}${words[third]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "9".tr ||
        selectedElementEnglish == "9".tr) {
      var firstL = (DateTime.now().microsecond + 1) * 5 % 26;
      var secondL = (DateTime.now().microsecond + 1) * 6 % 26;
      var number = twoDigits(DateTime.now().microsecond);
      password =
          '${words[firstW]}${words[secondW]}${letters[firstL]}${letters[secondL]}$number';
      passwordController.text = password;
    } else if (selectedElementArabic == "10".tr ||
        selectedElementEnglish == "10".tr) {
      var firstL = (DateTime.now().microsecond + 1) * 5 % 26;
      var secondL = (DateTime.now().microsecond + 1) * 6 % 26;
      var symbol1 = DateTime.now().microsecond % 10;
      var symbol2 = (DateTime.now().microsecond + 3) % 10;
      password =
          '${words[firstW]}${words[secondW]}${letters[firstL]}${letters[secondL]}${symbols[symbol1]}${symbols[symbol2]}';
      passwordController.text = password;
    } else if (selectedElementArabic == "11".tr ||
        selectedElementEnglish == "11".tr) {
      var number = threeDigits(DateTime.now().microsecond);
      var symbol = DateTime.now().microsecond % 10;
      password = '${words[firstW]}${words[secondW]}$number${symbols[symbol]}';
      passwordController.text = password;
    }
    // print(password);
    update();
  }
}
