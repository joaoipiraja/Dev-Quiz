import 'package:DevQuiz/shared/models/answer_model.dart';

class Question {
  final String title;
  final List<Answer> answers;
  final bool isAnswered;

  Question(
      {required this.title, required this.answers, this.isAnswered = false})
      : assert(answers.length == 4);
}
