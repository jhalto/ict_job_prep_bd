import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ict_job_prep_bd/feature/mcq/controller/mcq_controller.dart';
import 'package:ict_job_prep_bd/feature/mcq/model/exam_model.dart';

class ExamView extends StatelessWidget {
  ExamView({super.key});
  final controller = Get.put(McqController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Exams"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.exams.length,
        itemBuilder: (context, index) {
          var exams = controller.exams[index];
        return ListTile(
          title: Text("${exams.title}(${exams.dept})"),
          subtitle: Text("Exam:${exams.date}(${exams.pattern})"),   
        );
      },),
    );
  }
}