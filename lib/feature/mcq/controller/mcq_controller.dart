import 'package:get/get.dart';
import 'package:ict_job_prep_bd/feature/mcq/model/exam_model.dart';
import 'package:ict_job_prep_bd/feature/mcq/model/mcq_model.dart';

class McqController extends GetxController {
  List<ExamModel> exams = [
    ExamModel(
      examId: 1,
      title: "Combined Bank Senior Officer (IT)",
      date: "17.05.2024",
      pattern: 'BIBM',
      dept: "IT",
      questions: <McqModel>[
        McqModel(
          ques: "Expansion of FTP is _______.",
          sub: 'Ict',
          a: "Fine Transfer Protocol",
          b: " File Transfer Protocol",
          c: "First Transfer Protocol",
          d: "Fast Transfer Protocol",
          ans: "b",
          note: "File Transfer Protocol is an application layer protocol used to share ``file`` between a server and a client. The protocol uses two separate ports for data and control connections: ports for data and control connections: port 20 for data and port 21 for control"
        ),
        McqModel(
          ques: "Expansion of FTP is _______.",
          sub: "Ict",
          a: "Fine Transfer Protocol",
          b: " File Transfer Protocol",
          c: "First Transfer Protocol",
          d: "Fast Transfer Protocol",
          ans: "b",
        ),
      ],
    ),
    ExamModel(
      examId: 1,
      title: "Combined Bank Senior Officer (IT)",
      date: "17.05.2024",
      pattern: 'BIBM',
      dept: "IT",
      questions: <McqModel>[
        McqModel(
          ques: "Expansion of FTP is _______.",
          sub: 'Ict',
          a: "Fine Transfer Protocol",
          b: " File Transfer Protocol",
          c: "First Transfer Protocol",
          d: "Fast Transfer Protocol",
          ans: "b",
          note: "File Transfer Protocol is an application layer protocol used to share ``file`` between a server and a client. The protocol uses two separate ports for data and control connections: ports for data and control connections: port 20 for data and port 21 for control"
        ),
        McqModel(
          ques: "Expansion of FTP is _______.",
          sub: "Ict",
          a: "Fine Transfer Protocol",
          b: " File Transfer Protocol",
          c: "First Transfer Protocol",
          d: "Fast Transfer Protocol",
          ans: "b",
        ),
      ],
    ),
  ];
}
