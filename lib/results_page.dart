// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'reusable_container.dart';
import 'homepage.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(this.bmiresult, this.resulttesxt, this.interpretation,
      {Key? key})
      : super(key: key);
  final bmiresult;
  final resulttesxt;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30,
              child: Text(
            'Your BMI:',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
              child: Center(
                child: Text(
                  bmiresult,
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuse(
              activeCardColor,
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resulttesxt,
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        interpretation,
                        style: const TextStyle(fontSize: 22),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ]),
              () {},
            ),
          ),
          BottomButton('RECALCULATE', () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
