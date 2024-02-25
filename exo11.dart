// a simple quiz application using oop that allows users to play and view their score

import 'dart:io';

class Question {
  String? quest;
  List<String>? options;
  int? rightAnswer;

  Question(this.quest, this.options, this.rightAnswer);

  void showQuestion() {
    print(quest);
    for (int i = 0; i < options!.length; i++) {
      print((i + 1).toString() + "." + options!.elementAt(i));
    }
  }
}

class Quiz {
  List<Question>? questions;
  int score = 0;
  int? playerAnswer;
  int numberOfQuestion = 0;

  Quiz(this.questions);

  Question? getQuestion() {
    return questions?.elementAt(numberOfQuestion);
  }

  bool answerIsCorrect() {
    return playerAnswer == questions?.elementAt(numberOfQuestion).rightAnswer;
  }
}

class Game {
  void playGame() {
    List<Question> questions = [
      Question("What is the capital of Algeria?",
          ["Algiers", "Hydra", "Bab Ezzouar"], 1),
      Question("What is the red planet?", ["Earth", "Mars", "Jupiter"], 2),
      Question("In which year came covid", ["2020", "2013", "2021"], 1),
      Question("Which country won the African Cup in 2019",
          ["not morroco", "senegal", "egypyt"], 1)
    ];

    Quiz quiz = Quiz(questions);

    for (int i = 0; i < questions.length; i++) {
      Question? currentQuestion = quiz.getQuestion();

      if (currentQuestion != null) {
        print(
            "----------------------------------------------------------------");
        currentQuestion.showQuestion();
        print(
            "------------------------------------------------------------------");
        print("Enter your answer (1-${currentQuestion.options!.length}): ");
        String? input = stdin.readLineSync();
        quiz.playerAnswer = int.tryParse(input ?? '');

        if (quiz.answerIsCorrect()) {
          print("Correeccct");
          quiz.score++;
        } else {
          print(
              "Incorrecct.\nThe correct answer is: ${currentQuestion.options![currentQuestion.rightAnswer! - 1]}");
        }

        quiz.numberOfQuestion++;
      }
    }
    print("----------------------------------------------------------");
    print("Game over\nYou scored : ${quiz.score}/${questions.length}");
    print("----------------------------------------------------------");
  }
}

void main() {
  Game newgame = Game();
  newgame.playGame();
}
