import 'package:flutter/material.dart';
import 'package:quiz_time/model/Question.dart';
import 'package:quiz_time/widget/progressBar.dart';
import 'package:quiz_time/widget/quiz.dart';
import 'package:quiz_time/widget/result.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(
            Icons.add_circle,
            color: Color.fromARGB(255, 255, 152, 57),
          ));
          _countResult++;
        } else {
          _icons.add(Icon(
            Icons.block_outlined,
            color: Color.fromARGB(255, 243, 19, 131),
          ));
        }

        _questionIndex += 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      extendBodyBehindAppBar: false,
      body: Center(
        child: Column(
          children: [
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangeAnswer: _onChangeAnswer,
                  )
                : Result(
                    count: _countResult,
                    total: data.questions.length,
                    onClearState: _clearState,
                  )
          ],
        ),
      ),
    );
  }
}
