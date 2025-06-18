import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:ict_job_prep_bd/feature/home/views/home.dart';
import 'package:ict_job_prep_bd/feature/mcq/views/exam_view.dart';
import 'package:ict_job_prep_bd/l10n/app_localizations.dart';

import 'package:ict_job_prep_bd/translation/controller/translation.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(TranslationController());
  await Future.delayed(Duration(milliseconds: 100));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key,});

  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TranslationController>(
      init: Get.find<TranslationController>(),
      builder:  (controller) {
      return GetMaterialApp(
      
      locale: controller.appLocale?? Locale('en'),
      supportedLocales: [Locale('en'), Locale('bn')],

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ExamView(),
    );
    },);
  }
}
