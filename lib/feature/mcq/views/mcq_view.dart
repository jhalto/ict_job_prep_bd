import 'package:flutter/material.dart';
import 'package:ict_job_prep_bd/feature/mcq/model/mcq_model.dart';

class McqView extends StatelessWidget {
const McqView({super.key, required this.mcqs});
 final List<McqModel>? mcqs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: mcqs!.length,
        itemBuilder: (context, index) {
          var mcq = mcqs![index];
       return Card(
        child: Column(
        children: [
          Text("${mcq.ques}")
        ],
        ),
       ); 
      },),
    );
  }
}