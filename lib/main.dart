import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ochma/BmiCalculator.dart';

void main(){
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
    home: InputPage(),

    );
  }
}




