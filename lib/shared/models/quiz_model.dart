import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class Quiz {
  final List<Question> questions;
  final String title;
  final String image;
  final Level level;

  Quiz({
    required this.questions,
    required this.title,
    required this.image,
    required this.level,
  });

  int get questionAnswered {
    return questions.where((element) => element.isAnswered).toList().length;
  }

  String get stage {
    return "${this.questionAnswered}/${this.questions.length}";
  }

  double get stage_percent {
    return this.questionAnswered / this.questions.length;
  }
}
