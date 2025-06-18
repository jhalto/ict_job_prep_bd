import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:get/get.dart';
import 'package:ict_job_prep_bd/core/style/global_text_style.dart';
import 'package:ict_job_prep_bd/feature/home/controllers/home_controller.dart';
import 'package:ict_job_prep_bd/l10n/app_localizations.dart';
import 'package:ict_job_prep_bd/translation/controller/translation.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeController());
  final translationController = Get.find<TranslationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.appTitle,style: globalTextStyle(
          fs: 22,      
        ),),
        actions: [
          IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Select Language'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('English'),
                              onTap: () {
                                Get.find<TranslationController>()
                                    .changeLanguage(const Locale('en'));
                                Navigator.of(context).pop();
                              },
                            ),
                            ListTile(
                              title: Text('বাংলা'),
                              onTap: () {
                                Get.find<TranslationController>()
                                    .changeLanguage(const Locale('bn'));
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.language),
           ),
        ],
        
        ),
        
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
                   Math.tex(
          r'nCr = \frac{n!}{r!(n - r)!}',
          textStyle: TextStyle(fontSize: 24),
        ),
            ],
          ),
        ),
      ),
    );
  }
}
