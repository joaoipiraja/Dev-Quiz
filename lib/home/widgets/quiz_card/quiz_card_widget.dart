import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/widget/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final Quiz quiz;

  QuizCardWidget({required this.quiz});

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
          Container(height: 40, width: 40, child: Image.asset(quiz.image)),
          SizedBox(
            height: 20,
          ),
          Text(quiz.title, style: AppTextStyles.heading),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Expanded(
                flex: 1, child: Text(quiz.stage, style: AppTextStyles.body11)),
            Expanded(
              flex: 4,
              child: ProgressIndicatorWidget(value: quiz.stage_percent),
            )
          ])
        ],
      ),
    );
  }
}
