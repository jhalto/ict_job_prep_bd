import 'package:flutter/material.dart';
import 'package:ict_job_prep_bd/core/style/global_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
 final VoidCallback onTap;
 final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      
      onPressed: onTap,
      color: Colors.amber,
      
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10)
      ),
     child: Text(title,style: globalTextStyle(),),
    );
  }
}