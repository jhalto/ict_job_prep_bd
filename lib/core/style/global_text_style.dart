import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle globalTextStyle({
  double fs= 16,
  FontWeight fw = FontWeight.normal,
  double lh = 1.5,
  TextAlign ta = TextAlign.center,
  Color clr = Colors.black,
}){
   return GoogleFonts.roboto(
    fontSize: fs,
    fontWeight: fw,
    height: lh,
    
    color: clr,

  );
}
TextStyle banglaTextStyle({
  double fs= 16,
  FontWeight fw = FontWeight.normal,
  double lh = 1.5,
  TextAlign ta = TextAlign.center,
  Color clr = Colors.black,
}){
   return GoogleFonts.notoSansBengali(
    fontSize: fs,
    fontWeight: fw,
    height: lh,
    
    color: clr,

  );
}