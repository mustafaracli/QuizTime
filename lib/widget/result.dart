import 'dart:io';
import 'package:quiz_time/page/HomePage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function() onClearState;

  const Result({
    Key? key,
    required this.count,
    required this.total,
    required this.onClearState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 5) {
      msg = 'Daha iyisini yapabileceğini biliyoruz!';
      img = Image.asset('lib/assets/image/res.png');
    } else {
      msg = 'Evet, başardın! \n Harika bir sonucun var!';
      img = Image.asset('lib/assets/image/res.png');
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 186, 122),
                  blurRadius: 15.0,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(colors: <Color>[
                Color.fromARGB(255, 255, 186, 122),
                Color.fromARGB(255, 255, 186, 122),
              ])),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 50,
            runSpacing: 10,
            children: [
              Text(
                msg,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: img,
                ),
              ),
              Text(
                'Toplamda $total soru içinden $count soruya doğru yanıt verdin',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: onClearState,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 123, 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    //shadowColor: Colors.blue,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // shadowColor: Colors.black,
                    // elevation: 10,
                  ),
                  child: const Text(
                    'Tekrar dene',
                  )),
            ],
          ),
        ),
        const Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 199, 185, 233),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomePage(),
                ));
          },
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 123, 0),
            primary: Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text(
            'Ana Sayfa',
          ),
        ),
      ],
    );
  }
}
