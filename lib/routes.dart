import 'package:get/get.dart';
import 'package:pianex_02_password_generator/pages/home_page.dart';
import 'package:pianex_02_password_generator/pages/settings/about_page.dart';
import 'package:pianex_02_password_generator/pages/settings/language_page.dart';
import 'package:pianex_02_password_generator/pages/settings_page.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/HomePage", page: () => HomePage()),
  GetPage(name: "/SettingsPage", page: () => const SettingsPage()),
  GetPage(name: "/LanguagePage", page: () => const LanguagePage()),
  GetPage(name: "/AboutPage", page: () => const AboutPage()),
];
