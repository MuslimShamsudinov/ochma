import 'package:flutter/material.dart';

import 'package:ochma/BmiCalculator.dart';
import 'package:ochma/app/Bmi%20service.dart';







class resultPage extends StatelessWidget {
  resultPage({
    required this.height,
    required this.weight,
  });

  final double height;
  final int weight;

  @override
  Widget build(BuildContext context) {
    final bmi = BmiService.bmiCalculate(height: height, weight: weight);
    return Scaffold(
      backgroundColor: Color(0xff111328),
      appBar: AppBar(
        backgroundColor: Color(0xff111328),
        elevation: 0,
        title: Center(
            child: Text(
          'Bmi Calculator'.toUpperCase(),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result'.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
                flex: 5,
                child: Pages(
                  tus: Color(0xff1D1e33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        BmiService.bmiResult(bmi)!,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Text(
                        '2er gtr4hnytbgeg'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        BmiService.giveDescription(bmi).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                )),
            Calculate(
              text: 'Re - Calculate ',
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
