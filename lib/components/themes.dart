import 'package:flutter/material.dart';

//classe que vai ser o tema usado por todo o app
class AppTheme {
  //cores usadas no app
  static const Color primaryColor = Color(0xffDAD3C8);
  static const Color secondaryColor = Color(0xffFFE5DE);
  static const Color thirdColor = Color(0xffDCF6E6);
  static const Color fourthColor = Color(0xff000000);
  static const Color fifthColor = Color(0xffFFFFFF);

  //tamanho da fonte usada no app
  static const double fontSize = 20;

  //estilo da fonte usada no app
  static const TextStyle textStyle = TextStyle(
    fontSize: fontSize,
    color: fourthColor,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle2 = TextStyle(
    fontSize: fontSize,
    color: fifthColor,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle3 = TextStyle(
    fontSize: fontSize,
    color: fourthColor,
    fontWeight: FontWeight.bold,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle4 = TextStyle(
    fontSize: fontSize,
    color: fifthColor,
    fontWeight: FontWeight.bold,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle5 = TextStyle(
    fontSize: fontSize,
    color: fourthColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle6 = TextStyle(
    fontSize: fontSize,
    color: fifthColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle7 = TextStyle(
    fontSize: fontSize,
    color: fourthColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: fifthColor,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle8 = TextStyle(
    fontSize: fontSize,
    color: fifthColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: fourthColor,
  );

  //estilo da fonte usada no app
  static const TextStyle textStyle9 = TextStyle(
    fontSize: fontSize,
    color: fourthColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: fifthColor,
    decorationThickness: 2,
  );
}
