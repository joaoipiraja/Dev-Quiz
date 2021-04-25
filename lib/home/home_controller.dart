import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  User? user;
  List<Quiz>? quizzes;

  set state(HomeState state) => this.stateNotifier.value = state;
  HomeState get state => this.stateNotifier.value;

  void getUser() async {
    this.state = HomeState.loading;
    await Future.delayed(Duration(seconds: 5));
    this.state = HomeState.sucess;
    this.user = User(
        name: "João Victor",
        photoURL: "https://avatars.githubusercontent.com/u/35410277?v=4");
  }

  void getQuizzes() async {
    this.state = HomeState.loading;
    await Future.delayed(Duration(seconds: 5));
    this.state = HomeState.sucess;
    this.quizzes = [
      Quiz(
          title: "Básico de Flutter",
          questions: [
            Question(
                title: "NLW 5 Flutter",
                answers: [
                  Answer(title: "A"),
                  Answer(title: "B"),
                  Answer(title: "C", isRight: true),
                  Answer(title: "D")
                ],
                isAnswered: true),
            Question(title: "NLW 5 Flutter", answers: [
              Answer(title: "A"),
              Answer(title: "B"),
              Answer(title: "C", isRight: true),
              Answer(title: "D")
            ])
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
  }
}
