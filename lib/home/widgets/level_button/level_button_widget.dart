import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label)),
        super(key: key);

  var details = {
    'Fácil': {
      'borderColor': AppColors.levelButtonBorderFacil,
      'textColor': AppColors.levelButtonTextFacil,
      'boxColor': AppColors.levelButtonFacil
    },
    'Médio': {
      'borderColor': AppColors.levelButtonBorderMedio,
      'textColor': AppColors.levelButtonTextMedio,
      'boxColor': AppColors.levelButtonMedio
    },
    'Difícil': {
      'borderColor': AppColors.levelButtonBorderDificil,
      'textColor': AppColors.levelButtonTextDificil,
      'boxColor': AppColors.levelButtonDificil
    },
    'Perito': {
      'borderColor': AppColors.levelButtonBorderPerito,
      'textColor': AppColors.levelButtonTextPerito,
      'boxColor': AppColors.levelButtonPerito
    },
  };

  Color get boxColor => details[label]!["boxColor"]!;
  Color get borderColor => details[label]!["borderColor"]!;
  Color get textColor => details[label]!["textColor"]!;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: boxColor,
          border: Border.fromBorderSide(BorderSide(color: borderColor)),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 3),
          child: Text(
            label,
            style: GoogleFonts.notoSans(color: textColor, fontSize: 13),
          ),
        ));
  }
}
