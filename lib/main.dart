import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'theme.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';

void main() {
  runApp(
    GetMaterialApp(
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translationsKeys: AppTranslation.translations,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    ),
  );
}
