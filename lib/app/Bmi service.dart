import 'dart:math';

class BmiService {
  static double bmiCalculate({double? height, int? weight}) {
    final bmi = weight! / pow(height! / 100, 2);
    return bmi;
  }

  static String? bmiResult(double bmi) {
    if (bmi >= 25) {
      return 'Семиз';
    } else if (bmi > 18.5) {
      return 'Норма';
    } else if (bmi < 18.5) {
      return 'Арык';
    }
    return null;
  }

  static String? giveDescription(double bmi) {
    if (bmi >= 25) {
      return 'Код жазып отура бербей кыймылдаңыз';
    } else if (bmi > 18.5) {
      return 'Норма эле экенсиз код жазуудан баш көтөрбөң';
    } else if (bmi < 18.5) {
      return 'Семириңиз!';
    }
    return null;
  }
}
