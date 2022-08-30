import 'dart:ui';
import 'package:flutter/material.dart';
import 'TwoPage.dart';
import 'package:icon/icon.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      extendBodyBehindAppBar: false,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 199, 185, 233),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: FittedBox(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 56, 56, 56),
                  )),
            ),
            const Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 199, 185, 233),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 300,
              height: 250,
              child: FittedBox(
                alignment: Alignment.topCenter,
                child: Image.asset('lib/assets/image/logo2.png'),
              ),
            ),
            const Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 199, 185, 233),
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Image.asset('lib/assets/image/play2.png'),
              iconSize: 100,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SecondPage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
