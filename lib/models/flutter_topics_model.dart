import 'package:flashcards_quiz/models/university_questions_model.dart';
import 'package:flashcards_quiz/models/computer_questions_model.dart';
import 'package:flashcards_quiz/models/funny_questions_model.dart';
import 'package:flashcards_quiz/models/science_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.building_2_fill,
    topicName: "มหาวิทยาลัยทักษิณ",
    topicQuestions: UniversityQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "วิทยาศาสตร์",
    topicQuestions: ScienceQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.desktopcomputer,
    topicName: "คอมพิวเตอร์",
    topicQuestions: ComputerQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.smiley,
    topicName: "กวนๆ",
    topicQuestions: FunnyQuestionsList,
  ),
];
