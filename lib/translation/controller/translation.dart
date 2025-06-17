import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TranslationController extends GetxController {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  @override
  void onInit() {
    super.onInit();
    loadSavedLanguage();
  }

  void changeLanguage(Locale type) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _appLocale = type;
    Get.updateLocale(type);
    await sp.setString('language_code', type.languageCode);
    update(); // Notifies GetBuilder/Obx if used
  }

  void loadSavedLanguage() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? code = sp.getString('language_code') ?? 'en';
    _appLocale = Locale(code);
    Get.updateLocale(_appLocale!);
    update();
  }
}
