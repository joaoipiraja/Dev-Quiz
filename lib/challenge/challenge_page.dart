import 'package:DevQuiz/challenge/widget/question_inidicator/question_inidicator_widget.dart';
import 'package:flutter/material.dart';

import 'widget/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(top: true, child: QuestionIndicatorWidget())),
      body: QuizWidget(title: "O quee o flutter faz na sua totalidade?"),
    );
  }
}
