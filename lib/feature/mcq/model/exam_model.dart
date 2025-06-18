import 'package:ict_job_prep_bd/feature/mcq/model/mcq_model.dart';

class ExamModel {
  int? examId;
  String? title;
  String? dept;
  String? date;
  String? pattern;
  List<McqModel>? questions;

  ExamModel({
    this.title,
    this.dept,
    this.examId,
    this.date,
    this.pattern,
    this.questions,
  });

  factory ExamModel.fromJson(Map<String, dynamic> json) {
    return ExamModel(
      title: json['title'],
      dept: json['dept'],
      examId: json['examId'],
      date: json['date'],
      pattern: json['pattern'],
      questions: json['questions'] != null
          ? (json['questions'] as List)
              .map((q) => McqModel.fromJson(q))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dept': dept,
      'examId': examId,
      'date': date,
      'pattern': pattern,
      'questions': questions?.map((q) => q.toJson()).toList(),
    };
  }
}