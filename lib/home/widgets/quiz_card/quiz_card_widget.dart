import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widget/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40, width: 40, child: Image.asset(AppImages.blocks)),
          SizedBox(
            height: 20,
          ),
          Text("Gerenciamento de Estado", style: AppTextStyles.heading),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Expanded(flex: 1, child: Text("3/10", style: AppTextStyles.body11)),
            Expanded(
              flex: 4,
              child: ProgressIndicatorWidget(value: 0.7),
            )
          ])
        ],
      ),
    );
  }
}
